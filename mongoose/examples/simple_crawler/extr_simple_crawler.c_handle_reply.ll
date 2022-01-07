; ModuleID = '/home/carl/AnghaBench/mongoose/examples/simple_crawler/extr_simple_crawler.c_handle_reply.c'
source_filename = "/home/carl/AnghaBench/mongoose/examples/simple_crawler/extr_simple_crawler.c_handle_reply.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mg_connection = type { i32, i64 }
%struct.http_message = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i8* }
%struct.userdata = type { i8*, i32 }
%struct.slre_cap = type { i32, i32 }

@.str = private unnamed_addr constant [28 x i8] c"Loaded url: %s at depth %d\0A\00", align 1
@max_depth = common dso_local global i64 0, align 8
@regex = common dso_local global i32 0, align 4
@SLRE_IGNORE_CASE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @handle_reply(%struct.mg_connection* %0, %struct.http_message* %1) #0 {
  %3 = alloca %struct.mg_connection*, align 8
  %4 = alloca %struct.http_message*, align 8
  %5 = alloca %struct.userdata*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store %struct.mg_connection* %0, %struct.mg_connection** %3, align 8
  store %struct.http_message* %1, %struct.http_message** %4, align 8
  %14 = load %struct.mg_connection*, %struct.mg_connection** %3, align 8
  %15 = getelementptr inbounds %struct.mg_connection, %struct.mg_connection* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = inttoptr i64 %16 to %struct.userdata*
  store %struct.userdata* %17, %struct.userdata** %5, align 8
  %18 = load %struct.http_message*, %struct.http_message** %4, align 8
  %19 = getelementptr inbounds %struct.http_message, %struct.http_message* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i8*, i8** %20, align 8
  store i8* %21, i8** %6, align 8
  store i32 2, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %22 = load i8*, i8** %6, align 8
  %23 = call i32 @strlen(i8* %22)
  store i32 %23, i32* %10, align 4
  %24 = load i32, i32* %8, align 4
  %25 = zext i32 %24 to i64
  %26 = call i8* @llvm.stacksave()
  store i8* %26, i8** %11, align 8
  %27 = alloca %struct.slre_cap, i64 %25, align 16
  store i64 %25, i64* %12, align 8
  %28 = load %struct.userdata*, %struct.userdata** %5, align 8
  %29 = getelementptr inbounds %struct.userdata, %struct.userdata* %28, i32 0, i32 0
  %30 = load i8*, i8** %29, align 8
  %31 = load %struct.userdata*, %struct.userdata** %5, align 8
  %32 = getelementptr inbounds %struct.userdata, %struct.userdata* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i8* %30, i32 %33)
  %35 = load %struct.userdata*, %struct.userdata** %5, align 8
  %36 = getelementptr inbounds %struct.userdata, %struct.userdata* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = sext i32 %37 to i64
  %39 = load i64, i64* @max_depth, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %42

41:                                               ; preds = %2
  store i32 1, i32* %13, align 4
  br label %82

42:                                               ; preds = %2
  br label %43

43:                                               ; preds = %62, %42
  %44 = load i32, i32* %9, align 4
  %45 = load i32, i32* %10, align 4
  %46 = icmp slt i32 %44, %45
  br i1 %46, label %47, label %60

47:                                               ; preds = %43
  %48 = load i32, i32* @regex, align 4
  %49 = load i8*, i8** %6, align 8
  %50 = load i32, i32* %9, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i8, i8* %49, i64 %51
  %53 = load i32, i32* %10, align 4
  %54 = load i32, i32* %9, align 4
  %55 = sub nsw i32 %53, %54
  %56 = load i32, i32* %8, align 4
  %57 = load i32, i32* @SLRE_IGNORE_CASE, align 4
  %58 = call i32 @slre_match(i32 %48, i8* %52, i32 %55, %struct.slre_cap* %27, i32 %56, i32 %57)
  store i32 %58, i32* %7, align 4
  %59 = icmp sgt i32 %58, 0
  br label %60

60:                                               ; preds = %47, %43
  %61 = phi i1 [ false, %43 ], [ %59, %47 ]
  br i1 %61, label %62, label %81

62:                                               ; preds = %60
  %63 = load %struct.mg_connection*, %struct.mg_connection** %3, align 8
  %64 = getelementptr inbounds %struct.mg_connection, %struct.mg_connection* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = getelementptr inbounds %struct.slre_cap, %struct.slre_cap* %27, i64 0
  %67 = getelementptr inbounds %struct.slre_cap, %struct.slre_cap* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = getelementptr inbounds %struct.slre_cap, %struct.slre_cap* %27, i64 0
  %70 = getelementptr inbounds %struct.slre_cap, %struct.slre_cap* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 16
  %72 = load %struct.userdata*, %struct.userdata** %5, align 8
  %73 = getelementptr inbounds %struct.userdata, %struct.userdata* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 8
  %75 = add nsw i32 %74, 1
  %76 = sext i32 %75 to i64
  %77 = call i32 @crawl_page(i32 %65, i32 %68, i32 %71, i64 %76)
  %78 = load i32, i32* %7, align 4
  %79 = load i32, i32* %9, align 4
  %80 = add nsw i32 %79, %78
  store i32 %80, i32* %9, align 4
  br label %43

81:                                               ; preds = %60
  store i32 0, i32* %13, align 4
  br label %82

82:                                               ; preds = %81, %41
  %83 = load i8*, i8** %11, align 8
  call void @llvm.stackrestore(i8* %83)
  %84 = load i32, i32* %13, align 4
  switch i32 %84, label %86 [
    i32 0, label %85
    i32 1, label %85
  ]

85:                                               ; preds = %82, %82
  ret void

86:                                               ; preds = %82
  unreachable
}

declare dso_local i32 @strlen(i8*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @printf(i8*, i8*, i32) #1

declare dso_local i32 @slre_match(i32, i8*, i32, %struct.slre_cap*, i32, i32) #1

declare dso_local i32 @crawl_page(i32, i32, i32, i64) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
