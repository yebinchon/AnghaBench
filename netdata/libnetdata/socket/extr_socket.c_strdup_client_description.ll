; ModuleID = '/home/carl/AnghaBench/netdata/libnetdata/socket/extr_socket.c_strdup_client_description.c'
source_filename = "/home/carl/AnghaBench/netdata/libnetdata/socket/extr_socket.c_strdup_client_description.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [9 x i8] c"%s:%s:%d\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"%s:[%s]:%d\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"%s:%s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @strdup_client_description(i32 %0, i8* %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca [101 x i8], align 16
  store i32 %0, i32* %5, align 4
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  %10 = load i32, i32* %5, align 4
  switch i32 %10, label %18 [
    i32 130, label %11
    i32 129, label %17
    i32 128, label %24
  ]

11:                                               ; preds = %4
  %12 = getelementptr inbounds [101 x i8], [101 x i8]* %9, i64 0, i64 0
  %13 = load i8*, i8** %6, align 8
  %14 = load i8*, i8** %7, align 8
  %15 = load i32, i32* %8, align 4
  %16 = call i32 (i8*, i32, i8*, i8*, i8*, ...) @snprintfz(i8* %12, i32 100, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8* %13, i8* %14, i32 %15)
  br label %29

17:                                               ; preds = %4
  br label %18

18:                                               ; preds = %4, %17
  %19 = getelementptr inbounds [101 x i8], [101 x i8]* %9, i64 0, i64 0
  %20 = load i8*, i8** %6, align 8
  %21 = load i8*, i8** %7, align 8
  %22 = load i32, i32* %8, align 4
  %23 = call i32 (i8*, i32, i8*, i8*, i8*, ...) @snprintfz(i8* %19, i32 100, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i8* %20, i8* %21, i32 %22)
  br label %29

24:                                               ; preds = %4
  %25 = getelementptr inbounds [101 x i8], [101 x i8]* %9, i64 0, i64 0
  %26 = load i8*, i8** %6, align 8
  %27 = load i8*, i8** %7, align 8
  %28 = call i32 (i8*, i32, i8*, i8*, i8*, ...) @snprintfz(i8* %25, i32 100, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i8* %26, i8* %27)
  br label %29

29:                                               ; preds = %24, %18, %11
  %30 = getelementptr inbounds [101 x i8], [101 x i8]* %9, i64 0, i64 0
  %31 = call i8* @strdupz(i8* %30)
  ret i8* %31
}

declare dso_local i32 @snprintfz(i8*, i32, i8*, i8*, i8*, ...) #1

declare dso_local i8* @strdupz(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
