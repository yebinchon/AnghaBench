; ModuleID = '/home/carl/AnghaBench/mruby/src/extr_dump.c_mrb_dump_irep_cfunc.c'
source_filename = "/home/carl/AnghaBench/mruby/src/extr_dump.c_mrb_dump_irep_cfunc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MRB_DUMP_INVALID_ARGUMENT = common dso_local global i32 0, align 4
@FLAG_BYTEORDER_NATIVE = common dso_local global i32 0, align 4
@MRB_DUMP_OK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [82 x i8] c"/* dumped in little endian order.\0A   use `mrbc -E` option for big endian CPU. */\0A\00", align 1
@MRB_DUMP_WRITE_FAULT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [104 x i8] c"/* dumped in big endian order.\0A   use `mrbc -e` option for better performance on little endian CPU. */\0A\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"#include <stdint.h>\0A\00", align 1
@.str.3 = private unnamed_addr constant [178 x i8] c"#ifdef __cplusplus\0Aextern const uint8_t %s[];\0A#endif\0Aconst uint8_t\0A#if defined __GNUC__\0A__attribute__((aligned(%u)))\0A#elif defined _MSC_VER\0A__declspec(align(%u))\0A#endif\0A%s[] = {\00", align 1
@MRB_DUMP_ALIGNMENT = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@EOF = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [8 x i8] c"0x%02x,\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"\0A};\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mrb_dump_irep_cfunc(i32* %0, i32* %1, i32 %2, i32* %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32* %3, i32** %10, align 8
  store i8* %4, i8** %11, align 8
  store i32* null, i32** %12, align 8
  store i64 0, i64* %13, align 8
  store i64 0, i64* %14, align 8
  %16 = load i32*, i32** %10, align 8
  %17 = icmp eq i32* %16, null
  br i1 %17, label %27, label %18

18:                                               ; preds = %5
  %19 = load i8*, i8** %11, align 8
  %20 = icmp eq i8* %19, null
  br i1 %20, label %27, label %21

21:                                               ; preds = %18
  %22 = load i8*, i8** %11, align 8
  %23 = getelementptr inbounds i8, i8* %22, i64 0
  %24 = load i8, i8* %23, align 1
  %25 = sext i8 %24 to i32
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %21, %18, %5
  %28 = load i32, i32* @MRB_DUMP_INVALID_ARGUMENT, align 4
  store i32 %28, i32* %6, align 4
  br label %139

29:                                               ; preds = %21
  %30 = load i32, i32* %9, align 4
  %31 = load i32, i32* @FLAG_BYTEORDER_NATIVE, align 4
  %32 = call i32 @dump_flags(i32 %30, i32 %31)
  store i32 %32, i32* %9, align 4
  %33 = load i32*, i32** %7, align 8
  %34 = load i32*, i32** %8, align 8
  %35 = load i32, i32* %9, align 4
  %36 = call i32 @dump_irep(i32* %33, i32* %34, i32 %35, i32** %12, i64* %13)
  store i32 %36, i32* %15, align 4
  %37 = load i32, i32* %15, align 4
  %38 = load i32, i32* @MRB_DUMP_OK, align 4
  %39 = icmp eq i32 %37, %38
  br i1 %39, label %40, label %134

40:                                               ; preds = %29
  %41 = load i32, i32* %9, align 4
  %42 = call i32 @dump_bigendian_p(i32 %41)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %54, label %44

44:                                               ; preds = %40
  %45 = load i32*, i32** %10, align 8
  %46 = call i64 (i32*, i8*, ...) @fprintf(i32* %45, i8* getelementptr inbounds ([82 x i8], [82 x i8]* @.str, i64 0, i64 0))
  %47 = icmp slt i64 %46, 0
  br i1 %47, label %48, label %53

48:                                               ; preds = %44
  %49 = load i32*, i32** %7, align 8
  %50 = load i32*, i32** %12, align 8
  %51 = call i32 @mrb_free(i32* %49, i32* %50)
  %52 = load i32, i32* @MRB_DUMP_WRITE_FAULT, align 4
  store i32 %52, i32* %6, align 4
  br label %139

53:                                               ; preds = %44
  br label %64

54:                                               ; preds = %40
  %55 = load i32*, i32** %10, align 8
  %56 = call i64 (i32*, i8*, ...) @fprintf(i32* %55, i8* getelementptr inbounds ([104 x i8], [104 x i8]* @.str.1, i64 0, i64 0))
  %57 = icmp slt i64 %56, 0
  br i1 %57, label %58, label %63

58:                                               ; preds = %54
  %59 = load i32*, i32** %7, align 8
  %60 = load i32*, i32** %12, align 8
  %61 = call i32 @mrb_free(i32* %59, i32* %60)
  %62 = load i32, i32* @MRB_DUMP_WRITE_FAULT, align 4
  store i32 %62, i32* %6, align 4
  br label %139

63:                                               ; preds = %54
  br label %64

64:                                               ; preds = %63, %53
  %65 = load i32*, i32** %10, align 8
  %66 = call i64 (i32*, i8*, ...) @fprintf(i32* %65, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0))
  %67 = icmp slt i64 %66, 0
  br i1 %67, label %68, label %73

68:                                               ; preds = %64
  %69 = load i32*, i32** %7, align 8
  %70 = load i32*, i32** %12, align 8
  %71 = call i32 @mrb_free(i32* %69, i32* %70)
  %72 = load i32, i32* @MRB_DUMP_WRITE_FAULT, align 4
  store i32 %72, i32* %6, align 4
  br label %139

73:                                               ; preds = %64
  %74 = load i32*, i32** %10, align 8
  %75 = load i8*, i8** %11, align 8
  %76 = load i64, i64* @MRB_DUMP_ALIGNMENT, align 8
  %77 = trunc i64 %76 to i32
  %78 = load i64, i64* @MRB_DUMP_ALIGNMENT, align 8
  %79 = trunc i64 %78 to i32
  %80 = load i8*, i8** %11, align 8
  %81 = call i64 (i32*, i8*, ...) @fprintf(i32* %74, i8* getelementptr inbounds ([178 x i8], [178 x i8]* @.str.3, i64 0, i64 0), i8* %75, i32 %77, i32 %79, i8* %80)
  %82 = icmp slt i64 %81, 0
  br i1 %82, label %83, label %88

83:                                               ; preds = %73
  %84 = load i32*, i32** %7, align 8
  %85 = load i32*, i32** %12, align 8
  %86 = call i32 @mrb_free(i32* %84, i32* %85)
  %87 = load i32, i32* @MRB_DUMP_WRITE_FAULT, align 4
  store i32 %87, i32* %6, align 4
  br label %139

88:                                               ; preds = %73
  br label %89

89:                                               ; preds = %122, %88
  %90 = load i64, i64* %14, align 8
  %91 = load i64, i64* %13, align 8
  %92 = icmp ult i64 %90, %91
  br i1 %92, label %93, label %123

93:                                               ; preds = %89
  %94 = load i64, i64* %14, align 8
  %95 = urem i64 %94, 16
  %96 = icmp eq i64 %95, 0
  br i1 %96, label %97, label %108

97:                                               ; preds = %93
  %98 = load i32*, i32** %10, align 8
  %99 = call i64 @fputs(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0), i32* %98)
  %100 = load i64, i64* @EOF, align 8
  %101 = icmp eq i64 %99, %100
  br i1 %101, label %102, label %107

102:                                              ; preds = %97
  %103 = load i32*, i32** %7, align 8
  %104 = load i32*, i32** %12, align 8
  %105 = call i32 @mrb_free(i32* %103, i32* %104)
  %106 = load i32, i32* @MRB_DUMP_WRITE_FAULT, align 4
  store i32 %106, i32* %6, align 4
  br label %139

107:                                              ; preds = %97
  br label %108

108:                                              ; preds = %107, %93
  %109 = load i32*, i32** %10, align 8
  %110 = load i32*, i32** %12, align 8
  %111 = load i64, i64* %14, align 8
  %112 = add i64 %111, 1
  store i64 %112, i64* %14, align 8
  %113 = getelementptr inbounds i32, i32* %110, i64 %111
  %114 = load i32, i32* %113, align 4
  %115 = call i64 (i32*, i8*, ...) @fprintf(i32* %109, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), i32 %114)
  %116 = icmp slt i64 %115, 0
  br i1 %116, label %117, label %122

117:                                              ; preds = %108
  %118 = load i32*, i32** %7, align 8
  %119 = load i32*, i32** %12, align 8
  %120 = call i32 @mrb_free(i32* %118, i32* %119)
  %121 = load i32, i32* @MRB_DUMP_WRITE_FAULT, align 4
  store i32 %121, i32* %6, align 4
  br label %139

122:                                              ; preds = %108
  br label %89

123:                                              ; preds = %89
  %124 = load i32*, i32** %10, align 8
  %125 = call i64 @fputs(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), i32* %124)
  %126 = load i64, i64* @EOF, align 8
  %127 = icmp eq i64 %125, %126
  br i1 %127, label %128, label %133

128:                                              ; preds = %123
  %129 = load i32*, i32** %7, align 8
  %130 = load i32*, i32** %12, align 8
  %131 = call i32 @mrb_free(i32* %129, i32* %130)
  %132 = load i32, i32* @MRB_DUMP_WRITE_FAULT, align 4
  store i32 %132, i32* %6, align 4
  br label %139

133:                                              ; preds = %123
  br label %134

134:                                              ; preds = %133, %29
  %135 = load i32*, i32** %7, align 8
  %136 = load i32*, i32** %12, align 8
  %137 = call i32 @mrb_free(i32* %135, i32* %136)
  %138 = load i32, i32* %15, align 4
  store i32 %138, i32* %6, align 4
  br label %139

139:                                              ; preds = %134, %128, %117, %102, %83, %68, %58, %48, %27
  %140 = load i32, i32* %6, align 4
  ret i32 %140
}

declare dso_local i32 @dump_flags(i32, i32) #1

declare dso_local i32 @dump_irep(i32*, i32*, i32, i32**, i64*) #1

declare dso_local i32 @dump_bigendian_p(i32) #1

declare dso_local i64 @fprintf(i32*, i8*, ...) #1

declare dso_local i32 @mrb_free(i32*, i32*) #1

declare dso_local i64 @fputs(i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
