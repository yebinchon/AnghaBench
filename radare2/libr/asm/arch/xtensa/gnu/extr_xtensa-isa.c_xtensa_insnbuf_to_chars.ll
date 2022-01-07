; ModuleID = '/home/carl/AnghaBench/radare2/libr/asm/arch/xtensa/gnu/extr_xtensa-isa.c_xtensa_insnbuf_to_chars.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/asm/arch/xtensa/gnu/extr_xtensa-isa.c_xtensa_insnbuf_to_chars.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }

@XTENSA_UNDEFINED = common dso_local global i32 0, align 4
@xtensa_isa_buffer_overflow = common dso_local global i32 0, align 4
@xtisa_errno = common dso_local global i32 0, align 4
@xtisa_error_msg = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"output buffer too small for instruction\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xtensa_insnbuf_to_chars(i64 %0, i32* %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_2__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store i64 %0, i64* %6, align 8
  store i32* %1, i32** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %20 = load i64, i64* %6, align 8
  %21 = inttoptr i64 %20 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %21, %struct.TYPE_2__** %10, align 8
  %22 = load i64, i64* %6, align 8
  %23 = call i32 @xtensa_isa_maxlength(i64 %22)
  store i32 %23, i32* %11, align 4
  %24 = load i32, i32* %9, align 4
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %4
  %27 = load i32, i32* %11, align 4
  store i32 %27, i32* %9, align 4
  br label %28

28:                                               ; preds = %26, %4
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %28
  %34 = load i32, i32* %11, align 4
  %35 = sub nsw i32 %34, 1
  store i32 %35, i32* %13, align 4
  store i32 -1, i32* %14, align 4
  br label %37

36:                                               ; preds = %28
  store i32 0, i32* %13, align 4
  store i32 1, i32* %14, align 4
  br label %37

37:                                               ; preds = %36, %33
  %38 = load i64, i64* %6, align 8
  %39 = load i32*, i32** %7, align 8
  %40 = call i32 @xtensa_format_decode(i64 %38, i32* %39)
  store i32 %40, i32* %17, align 4
  %41 = load i32, i32* %17, align 4
  %42 = load i32, i32* @XTENSA_UNDEFINED, align 4
  %43 = icmp eq i32 %41, %42
  br i1 %43, label %44, label %46

44:                                               ; preds = %37
  %45 = load i32, i32* @XTENSA_UNDEFINED, align 4
  store i32 %45, i32* %5, align 4
  br label %98

46:                                               ; preds = %37
  %47 = load i64, i64* %6, align 8
  %48 = load i32, i32* %17, align 4
  %49 = call i32 @xtensa_format_length(i64 %47, i32 %48)
  store i32 %49, i32* %16, align 4
  %50 = load i32, i32* %16, align 4
  %51 = load i32, i32* @XTENSA_UNDEFINED, align 4
  %52 = icmp eq i32 %50, %51
  br i1 %52, label %53, label %55

53:                                               ; preds = %46
  %54 = load i32, i32* @XTENSA_UNDEFINED, align 4
  store i32 %54, i32* %5, align 4
  br label %98

55:                                               ; preds = %46
  %56 = load i32, i32* %16, align 4
  %57 = load i32, i32* %9, align 4
  %58 = icmp sgt i32 %56, %57
  br i1 %58, label %59, label %64

59:                                               ; preds = %55
  %60 = load i32, i32* @xtensa_isa_buffer_overflow, align 4
  store i32 %60, i32* @xtisa_errno, align 4
  %61 = load i32, i32* @xtisa_error_msg, align 4
  %62 = call i32 @strcpy(i32 %61, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  %63 = load i32, i32* @XTENSA_UNDEFINED, align 4
  store i32 %63, i32* %5, align 4
  br label %98

64:                                               ; preds = %55
  %65 = load i32, i32* %13, align 4
  %66 = load i32, i32* %16, align 4
  %67 = load i32, i32* %14, align 4
  %68 = mul nsw i32 %66, %67
  %69 = add nsw i32 %65, %68
  store i32 %69, i32* %12, align 4
  %70 = load i32, i32* %13, align 4
  store i32 %70, i32* %15, align 4
  br label %71

71:                                               ; preds = %90, %64
  %72 = load i32, i32* %15, align 4
  %73 = load i32, i32* %12, align 4
  %74 = icmp ne i32 %72, %73
  br i1 %74, label %75, label %96

75:                                               ; preds = %71
  %76 = load i32, i32* %15, align 4
  %77 = call i32 @byte_to_word_index(i32 %76)
  store i32 %77, i32* %18, align 4
  %78 = load i32, i32* %15, align 4
  %79 = call i32 @byte_to_bit_index(i32 %78)
  store i32 %79, i32* %19, align 4
  %80 = load i32*, i32** %7, align 8
  %81 = load i32, i32* %18, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i32, i32* %80, i64 %82
  %84 = load i32, i32* %83, align 4
  %85 = load i32, i32* %19, align 4
  %86 = ashr i32 %84, %85
  %87 = and i32 %86, 255
  %88 = trunc i32 %87 to i8
  %89 = load i8*, i8** %8, align 8
  store i8 %88, i8* %89, align 1
  br label %90

90:                                               ; preds = %75
  %91 = load i32, i32* %14, align 4
  %92 = load i32, i32* %15, align 4
  %93 = add nsw i32 %92, %91
  store i32 %93, i32* %15, align 4
  %94 = load i8*, i8** %8, align 8
  %95 = getelementptr inbounds i8, i8* %94, i32 1
  store i8* %95, i8** %8, align 8
  br label %71

96:                                               ; preds = %71
  %97 = load i32, i32* %16, align 4
  store i32 %97, i32* %5, align 4
  br label %98

98:                                               ; preds = %96, %59, %53, %44
  %99 = load i32, i32* %5, align 4
  ret i32 %99
}

declare dso_local i32 @xtensa_isa_maxlength(i64) #1

declare dso_local i32 @xtensa_format_decode(i64, i32*) #1

declare dso_local i32 @xtensa_format_length(i64, i32) #1

declare dso_local i32 @strcpy(i32, i8*) #1

declare dso_local i32 @byte_to_word_index(i32) #1

declare dso_local i32 @byte_to_bit_index(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
