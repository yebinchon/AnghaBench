; ModuleID = '/home/carl/AnghaBench/openvpn/src/openvpn/extr_buffer.c_format_hex_ex.c'
source_filename = "/home/carl/AnghaBench/openvpn/src/openvpn/extr_buffer.c_format_hex_ex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gc_arena = type { i32 }
%struct.buffer = type { i64 }

@FHE_SPACE_BREAK_MASK = common dso_local global i32 0, align 4
@INT_MAX = common dso_local global i64 0, align 8
@SIZE_MAX = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [33 x i8] c"Code assumes INT_MAX <= SIZE_MAX\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@FHE_CAPS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [5 x i8] c"%02X\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"%02x\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"[more...]\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @format_hex_ex(i8** %0, i32 %1, i32 %2, i32 %3, i8* %4, %struct.gc_arena* %5) #0 {
  %7 = alloca i8**, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca %struct.gc_arena*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca %struct.buffer, align 8
  %17 = alloca i32, align 4
  store i8** %0, i8*** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i8* %4, i8** %11, align 8
  store %struct.gc_arena* %5, %struct.gc_arena** %12, align 8
  %18 = load i32, i32* %10, align 4
  %19 = load i32, i32* @FHE_SPACE_BREAK_MASK, align 4
  %20 = and i32 %18, %19
  %21 = zext i32 %20 to i64
  store i64 %21, i64* %13, align 8
  %22 = load i8*, i8** %11, align 8
  %23 = icmp ne i8* %22, null
  br i1 %23, label %24, label %27

24:                                               ; preds = %6
  %25 = load i8*, i8** %11, align 8
  %26 = call i64 @strlen(i8* %25)
  br label %28

27:                                               ; preds = %6
  br label %28

28:                                               ; preds = %27, %24
  %29 = phi i64 [ %26, %24 ], [ 0, %27 ]
  store i64 %29, i64* %14, align 8
  %30 = load i64, i64* @INT_MAX, align 8
  %31 = load i64, i64* @SIZE_MAX, align 8
  %32 = icmp sle i64 %30, %31
  %33 = zext i1 %32 to i32
  %34 = call i32 @static_assert(i32 %33, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %35 = load i32, i32* %9, align 4
  %36 = icmp sgt i32 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %28
  %38 = load i32, i32* %9, align 4
  %39 = sext i32 %38 to i64
  br label %52

40:                                               ; preds = %28
  %41 = load i32, i32* %8, align 4
  %42 = mul nsw i32 %41, 2
  %43 = sext i32 %42 to i64
  %44 = load i32, i32* %8, align 4
  %45 = sext i32 %44 to i64
  %46 = load i64, i64* %13, align 8
  %47 = udiv i64 %45, %46
  %48 = load i64, i64* %14, align 8
  %49 = mul i64 %47, %48
  %50 = add i64 %43, %49
  %51 = add i64 %50, 2
  br label %52

52:                                               ; preds = %40, %37
  %53 = phi i64 [ %39, %37 ], [ %51, %40 ]
  store i64 %53, i64* %15, align 8
  %54 = load i64, i64* %15, align 8
  %55 = load %struct.gc_arena*, %struct.gc_arena** %12, align 8
  %56 = call i64 @alloc_buf_gc(i64 %54, %struct.gc_arena* %55)
  %57 = getelementptr inbounds %struct.buffer, %struct.buffer* %16, i32 0, i32 0
  store i64 %56, i64* %57, align 8
  store i32 0, i32* %17, align 4
  br label %58

58:                                               ; preds = %97, %52
  %59 = load i32, i32* %17, align 4
  %60 = load i32, i32* %8, align 4
  %61 = icmp slt i32 %59, %60
  br i1 %61, label %62, label %100

62:                                               ; preds = %58
  %63 = load i8*, i8** %11, align 8
  %64 = icmp ne i8* %63, null
  br i1 %64, label %65, label %77

65:                                               ; preds = %62
  %66 = load i32, i32* %17, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %77

68:                                               ; preds = %65
  %69 = load i32, i32* %17, align 4
  %70 = sext i32 %69 to i64
  %71 = load i64, i64* %13, align 8
  %72 = urem i64 %70, %71
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %77, label %74

74:                                               ; preds = %68
  %75 = load i8*, i8** %11, align 8
  %76 = call i32 @buf_printf(%struct.buffer* %16, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* %75)
  br label %77

77:                                               ; preds = %74, %68, %65, %62
  %78 = load i32, i32* %10, align 4
  %79 = load i32, i32* @FHE_CAPS, align 4
  %80 = and i32 %78, %79
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %89

82:                                               ; preds = %77
  %83 = load i8**, i8*** %7, align 8
  %84 = load i32, i32* %17, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i8*, i8** %83, i64 %85
  %87 = load i8*, i8** %86, align 8
  %88 = call i32 @buf_printf(%struct.buffer* %16, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8* %87)
  br label %96

89:                                               ; preds = %77
  %90 = load i8**, i8*** %7, align 8
  %91 = load i32, i32* %17, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i8*, i8** %90, i64 %92
  %94 = load i8*, i8** %93, align 8
  %95 = call i32 @buf_printf(%struct.buffer* %16, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i8* %94)
  br label %96

96:                                               ; preds = %89, %82
  br label %97

97:                                               ; preds = %96
  %98 = load i32, i32* %17, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %17, align 4
  br label %58

100:                                              ; preds = %58
  %101 = call i32 @buf_catrunc(%struct.buffer* %16, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0))
  %102 = getelementptr inbounds %struct.buffer, %struct.buffer* %16, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = inttoptr i64 %103 to i8*
  ret i8* %104
}

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @static_assert(i32, i8*) #1

declare dso_local i64 @alloc_buf_gc(i64, %struct.gc_arena*) #1

declare dso_local i32 @buf_printf(%struct.buffer*, i8*, i8*) #1

declare dso_local i32 @buf_catrunc(%struct.buffer*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
