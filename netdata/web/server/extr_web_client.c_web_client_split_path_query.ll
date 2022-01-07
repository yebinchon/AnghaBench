; ModuleID = '/home/carl/AnghaBench/netdata/web/server/extr_web_client.c_web_client_split_path_query.c'
source_filename = "/home/carl/AnghaBench/netdata/web/server/extr_web_client.c_web_client_split_path_query.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.web_client = type { i8, i32 }

@.str = private unnamed_addr constant [3 x i8] c"3f\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"3F\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @web_client_split_path_query(%struct.web_client* %0, i8* %1) #0 {
  %3 = alloca %struct.web_client*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  store %struct.web_client* %0, %struct.web_client** %3, align 8
  store i8* %1, i8** %4, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = call i8* @strchr(i8* %8, i8 signext 63)
  store i8* %9, i8** %5, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = icmp ne i8* %10, null
  br i1 %11, label %12, label %19

12:                                               ; preds = %2
  %13 = load %struct.web_client*, %struct.web_client** %3, align 8
  %14 = getelementptr inbounds %struct.web_client, %struct.web_client* %13, i32 0, i32 0
  store i8 63, i8* %14, align 4
  %15 = load %struct.web_client*, %struct.web_client** %3, align 8
  %16 = load i8*, i8** %4, align 8
  %17 = load i8*, i8** %5, align 8
  %18 = call i32 @web_client_set_path_query(%struct.web_client* %15, i8* %16, i8* %17)
  br label %60

19:                                               ; preds = %2
  %20 = load i8*, i8** %4, align 8
  store i8* %20, i8** %6, align 8
  br label %21

21:                                               ; preds = %51, %19
  %22 = load i8*, i8** %6, align 8
  %23 = icmp ne i8* %22, null
  br i1 %23, label %24, label %53

24:                                               ; preds = %21
  %25 = load i8*, i8** %6, align 8
  %26 = call i8* @strchr(i8* %25, i8 signext 37)
  store i8* %26, i8** %5, align 8
  %27 = load i8*, i8** %5, align 8
  %28 = icmp ne i8* %27, null
  br i1 %28, label %29, label %51

29:                                               ; preds = %24
  %30 = load i8*, i8** %5, align 8
  %31 = getelementptr inbounds i8, i8* %30, i64 1
  store i8* %31, i8** %7, align 8
  %32 = load i8*, i8** %7, align 8
  %33 = call i32 @strncmp(i8* %32, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 2)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %29
  %36 = load i8*, i8** %7, align 8
  %37 = call i32 @strncmp(i8* %36, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 2)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %48, label %39

39:                                               ; preds = %35, %29
  %40 = load i8*, i8** %5, align 8
  %41 = load i8, i8* %40, align 1
  %42 = load %struct.web_client*, %struct.web_client** %3, align 8
  %43 = getelementptr inbounds %struct.web_client, %struct.web_client* %42, i32 0, i32 0
  store i8 %41, i8* %43, align 4
  %44 = load %struct.web_client*, %struct.web_client** %3, align 8
  %45 = load i8*, i8** %4, align 8
  %46 = load i8*, i8** %5, align 8
  %47 = call i32 @web_client_set_path_query(%struct.web_client* %44, i8* %45, i8* %46)
  br label %60

48:                                               ; preds = %35
  %49 = load i8*, i8** %5, align 8
  %50 = getelementptr inbounds i8, i8* %49, i32 1
  store i8* %50, i8** %5, align 8
  br label %51

51:                                               ; preds = %48, %24
  %52 = load i8*, i8** %5, align 8
  store i8* %52, i8** %6, align 8
  br label %21

53:                                               ; preds = %21
  %54 = load %struct.web_client*, %struct.web_client** %3, align 8
  %55 = getelementptr inbounds %struct.web_client, %struct.web_client* %54, i32 0, i32 0
  store i8 0, i8* %55, align 4
  %56 = load i8*, i8** %4, align 8
  %57 = call i32 @strlen(i8* %56)
  %58 = load %struct.web_client*, %struct.web_client** %3, align 8
  %59 = getelementptr inbounds %struct.web_client, %struct.web_client* %58, i32 0, i32 1
  store i32 %57, i32* %59, align 4
  br label %60

60:                                               ; preds = %53, %39, %12
  ret void
}

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @web_client_set_path_query(%struct.web_client*, i8*, i8*) #1

declare dso_local i32 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
