; ModuleID = '/home/carl/AnghaBench/memcached/extr_testapp.c_test_binary_pipeline_hickup_chunk.c'
source_filename = "/home/carl/AnghaBench/memcached/extr_testapp.c_test_binary_pipeline_hickup_chunk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.anon = type { i32, [66556 x i8] }

@hickup_thread_running = common dso_local global i64 0, align 8
@TEST_PASS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i64)* @test_binary_pipeline_hickup_chunk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @test_binary_pipeline_hickup_chunk(i8* %0, i64 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca [256 x i8*], align 16
  %7 = alloca i32, align 4
  %8 = alloca %union.anon, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  store i64 %1, i64* %4, align 8
  store i32 0, i32* %5, align 4
  store i32 -559038737, i32* %7, align 4
  br label %12

12:                                               ; preds = %121, %2
  %13 = load i64, i64* @hickup_thread_running, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %21

15:                                               ; preds = %12
  %16 = load i32, i32* %5, align 4
  %17 = sext i32 %16 to i64
  %18 = add i64 %17, 4
  %19 = load i64, i64* %4, align 8
  %20 = icmp ult i64 %18, %19
  br label %21

21:                                               ; preds = %15, %12
  %22 = phi i1 [ false, %12 ], [ %20, %15 ]
  br i1 %22, label %23, label %122

23:                                               ; preds = %21
  %24 = call i32 (...) @rand()
  %25 = and i32 %24, 255
  store i32 %25, i32* %9, align 4
  %26 = call i32 (...) @rand()
  %27 = srem i32 %26, 250
  %28 = add nsw i32 %27, 1
  %29 = sext i32 %28 to i64
  store i64 %29, i64* %11, align 8
  %30 = load i32, i32* %9, align 4
  switch i32 %30, label %94 [
    i32 162, label %31
    i32 161, label %31
    i32 137, label %31
    i32 136, label %31
    i32 132, label %31
    i32 131, label %31
    i32 160, label %38
    i32 159, label %38
    i32 141, label %38
    i32 140, label %38
    i32 154, label %45
    i32 153, label %45
    i32 142, label %50
    i32 156, label %55
    i32 155, label %55
    i32 158, label %62
    i32 157, label %62
    i32 144, label %62
    i32 143, label %62
    i32 128, label %69
    i32 148, label %73
    i32 147, label %73
    i32 146, label %73
    i32 145, label %73
    i32 129, label %80
    i32 152, label %80
    i32 149, label %80
    i32 151, label %80
    i32 150, label %80
    i32 130, label %87
    i32 134, label %91
    i32 135, label %91
    i32 133, label %91
    i32 138, label %91
    i32 139, label %91
  ]

31:                                               ; preds = %23, %23, %23, %23, %23, %23
  %32 = bitcast %union.anon* %8 to [66560 x i8]*
  %33 = getelementptr inbounds [66560 x i8], [66560 x i8]* %32, i64 0, i64 0
  %34 = load i32, i32* %9, align 4
  %35 = getelementptr inbounds [256 x i8*], [256 x i8*]* %6, i64 0, i64 0
  %36 = load i64, i64* %11, align 8
  %37 = call i64 @storage_command(i8* %33, i32 66560, i32 %34, i8** %35, i64 %36, i32* %7, i32 4, i32 0, i32 0)
  store i64 %37, i64* %10, align 8
  br label %99

38:                                               ; preds = %23, %23, %23, %23
  %39 = bitcast %union.anon* %8 to [66560 x i8]*
  %40 = getelementptr inbounds [66560 x i8], [66560 x i8]* %39, i64 0, i64 0
  %41 = load i32, i32* %9, align 4
  %42 = getelementptr inbounds [256 x i8*], [256 x i8*]* %6, i64 0, i64 0
  %43 = load i64, i64* %11, align 8
  %44 = call i64 @raw_command(i8* %40, i32 66560, i32 %41, i8** %42, i64 %43, i32* %7, i32 4)
  store i64 %44, i64* %10, align 8
  br label %99

45:                                               ; preds = %23, %23
  %46 = bitcast %union.anon* %8 to [66560 x i8]*
  %47 = getelementptr inbounds [66560 x i8], [66560 x i8]* %46, i64 0, i64 0
  %48 = load i32, i32* %9, align 4
  %49 = call i64 @raw_command(i8* %47, i32 66560, i32 %48, i8** null, i64 0, i32* null, i32 0)
  store i64 %49, i64* %10, align 8
  br label %99

50:                                               ; preds = %23
  %51 = bitcast %union.anon* %8 to [66560 x i8]*
  %52 = getelementptr inbounds [66560 x i8], [66560 x i8]* %51, i64 0, i64 0
  %53 = load i32, i32* %9, align 4
  %54 = call i64 @raw_command(i8* %52, i32 66560, i32 %53, i8** null, i64 0, i32* null, i32 0)
  store i64 %54, i64* %10, align 8
  br label %99

55:                                               ; preds = %23, %23
  %56 = bitcast %union.anon* %8 to [66560 x i8]*
  %57 = getelementptr inbounds [66560 x i8], [66560 x i8]* %56, i64 0, i64 0
  %58 = load i32, i32* %9, align 4
  %59 = getelementptr inbounds [256 x i8*], [256 x i8*]* %6, i64 0, i64 0
  %60 = load i64, i64* %11, align 8
  %61 = call i64 @raw_command(i8* %57, i32 66560, i32 %58, i8** %59, i64 %60, i32* null, i32 0)
  store i64 %61, i64* %10, align 8
  br label %99

62:                                               ; preds = %23, %23, %23, %23
  %63 = bitcast %union.anon* %8 to [66560 x i8]*
  %64 = getelementptr inbounds [66560 x i8], [66560 x i8]* %63, i64 0, i64 0
  %65 = load i32, i32* %9, align 4
  %66 = getelementptr inbounds [256 x i8*], [256 x i8*]* %6, i64 0, i64 0
  %67 = load i64, i64* %11, align 8
  %68 = call i64 @arithmetic_command(i8* %64, i32 66560, i32 %65, i8** %66, i64 %67, i32 1, i32 0, i32 0)
  store i64 %68, i64* %10, align 8
  br label %99

69:                                               ; preds = %23
  %70 = bitcast %union.anon* %8 to [66560 x i8]*
  %71 = getelementptr inbounds [66560 x i8], [66560 x i8]* %70, i64 0, i64 0
  %72 = call i64 @raw_command(i8* %71, i32 66560, i32 128, i8** null, i64 0, i32* null, i32 0)
  store i64 %72, i64* %10, align 8
  br label %99

73:                                               ; preds = %23, %23, %23, %23
  %74 = bitcast %union.anon* %8 to [66560 x i8]*
  %75 = getelementptr inbounds [66560 x i8], [66560 x i8]* %74, i64 0, i64 0
  %76 = load i32, i32* %9, align 4
  %77 = getelementptr inbounds [256 x i8*], [256 x i8*]* %6, i64 0, i64 0
  %78 = load i64, i64* %11, align 8
  %79 = call i64 @raw_command(i8* %75, i32 66560, i32 %76, i8** %77, i64 %78, i32* null, i32 0)
  store i64 %79, i64* %10, align 8
  br label %99

80:                                               ; preds = %23, %23, %23, %23, %23
  %81 = bitcast %union.anon* %8 to [66560 x i8]*
  %82 = getelementptr inbounds [66560 x i8], [66560 x i8]* %81, i64 0, i64 0
  %83 = load i32, i32* %9, align 4
  %84 = getelementptr inbounds [256 x i8*], [256 x i8*]* %6, i64 0, i64 0
  %85 = load i64, i64* %11, align 8
  %86 = call i64 @touch_command(i8* %82, i32 66560, i32 %83, i8** %84, i64 %85, i32 10)
  store i64 %86, i64* %10, align 8
  br label %99

87:                                               ; preds = %23
  %88 = bitcast %union.anon* %8 to [66560 x i8]*
  %89 = getelementptr inbounds [66560 x i8], [66560 x i8]* %88, i64 0, i64 0
  %90 = call i64 @raw_command(i8* %89, i32 66560, i32 130, i8** null, i64 0, i32* null, i32 0)
  store i64 %90, i64* %10, align 8
  br label %99

91:                                               ; preds = %23, %23, %23, %23, %23
  %92 = load i32, i32* %9, align 4
  %93 = or i32 %92, 240
  store i32 %93, i32* %9, align 4
  br label %94

94:                                               ; preds = %23, %91
  %95 = bitcast %union.anon* %8 to [66560 x i8]*
  %96 = getelementptr inbounds [66560 x i8], [66560 x i8]* %95, i64 0, i64 0
  %97 = load i32, i32* %9, align 4
  %98 = call i64 @raw_command(i8* %96, i32 66560, i32 %97, i8** null, i64 0, i32* null, i32 0)
  store i64 %98, i64* %10, align 8
  br label %99

99:                                               ; preds = %94, %87, %80, %73, %69, %62, %55, %50, %45, %38, %31
  %100 = load i64, i64* %10, align 8
  %101 = load i32, i32* %5, align 4
  %102 = sext i32 %101 to i64
  %103 = add i64 %100, %102
  %104 = load i64, i64* %4, align 8
  %105 = icmp ult i64 %103, %104
  br i1 %105, label %106, label %120

106:                                              ; preds = %99
  %107 = load i8*, i8** %3, align 8
  %108 = load i32, i32* %5, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds i8, i8* %107, i64 %109
  %111 = bitcast %union.anon* %8 to [66560 x i8]*
  %112 = getelementptr inbounds [66560 x i8], [66560 x i8]* %111, i64 0, i64 0
  %113 = load i64, i64* %10, align 8
  %114 = call i32 @memcpy(i8* %110, i8* %112, i64 %113)
  %115 = load i64, i64* %10, align 8
  %116 = load i32, i32* %5, align 4
  %117 = sext i32 %116 to i64
  %118 = add i64 %117, %115
  %119 = trunc i64 %118 to i32
  store i32 %119, i32* %5, align 4
  br label %121

120:                                              ; preds = %99
  br label %122

121:                                              ; preds = %106
  br label %12

122:                                              ; preds = %120, %21
  %123 = load i8*, i8** %3, align 8
  %124 = load i32, i32* %5, align 4
  %125 = call i32 @safe_send(i8* %123, i32 %124, i32 1)
  %126 = load i32, i32* @TEST_PASS, align 4
  ret i32 %126
}

declare dso_local i32 @rand(...) #1

declare dso_local i64 @storage_command(i8*, i32, i32, i8**, i64, i32*, i32, i32, i32) #1

declare dso_local i64 @raw_command(i8*, i32, i32, i8**, i64, i32*, i32) #1

declare dso_local i64 @arithmetic_command(i8*, i32, i32, i8**, i64, i32, i32, i32) #1

declare dso_local i64 @touch_command(i8*, i32, i32, i8**, i64, i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

declare dso_local i32 @safe_send(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
