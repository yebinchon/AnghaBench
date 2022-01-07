; ModuleID = '/home/carl/AnghaBench/radare2/libr/asm/arch/tms320/c55x_plus/extr_c55plus_decode.c_get_ins_bits.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/asm/arch/tms320/c55x_plus/extr_c55plus_decode.c_get_ins_bits.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ins_str = common dso_local global i8** null, align 8
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"Invalid token %s\0A\00", align 1
@C55PLUS_DEBUG = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [18 x i8] c"INS_BITS => 0x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i8*, i32, i32, i32*)* @get_ins_bits to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_ins_bits(i32 %0, i32 %1, i8* %2, i32 %3, i32 %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i8*, align 8
  %20 = alloca i8*, align 8
  store i32 %0, i32* %8, align 4
  store i32 %1, i32* %9, align 4
  store i8* %2, i8** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32* %5, i32** %13, align 8
  store i32 0, i32* %14, align 4
  %21 = load i8*, i8** %10, align 8
  %22 = getelementptr inbounds i8, i8* %21, i64 0
  %23 = load i8, i8* %22, align 1
  %24 = sext i8 %23 to i32
  %25 = icmp eq i32 %24, 113
  br i1 %25, label %26, label %32

26:                                               ; preds = %6
  %27 = load i32, i32* %12, align 4
  %28 = load i8*, i8** %10, align 8
  %29 = load i32, i32* %11, align 4
  %30 = load i32*, i32** %13, align 8
  %31 = call i32 @get_q_bits(i32 %27, i8* %28, i32 %29, i32* %30)
  store i32 %31, i32* %7, align 4
  br label %116

32:                                               ; preds = %6
  %33 = load i8**, i8*** @ins_str, align 8
  %34 = load i32, i32* %8, align 4
  %35 = mul nsw i32 %34, 4
  %36 = add nsw i32 1, %35
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i8*, i8** %33, i64 %37
  %39 = load i8*, i8** %38, align 8
  store i8* %39, i8** %19, align 8
  store i32 0, i32* %17, align 4
  store i32 0, i32* %18, align 4
  br label %40

40:                                               ; preds = %104, %32
  %41 = load i32, i32* %18, align 4
  %42 = load i32, i32* %11, align 4
  %43 = icmp slt i32 %41, %42
  br i1 %43, label %44, label %107

44:                                               ; preds = %40
  %45 = load i8*, i8** %19, align 8
  %46 = load i32, i32* %17, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i8, i8* %45, i64 %47
  %49 = load i8*, i8** %10, align 8
  %50 = load i32, i32* %18, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i8, i8* %49, i64 %51
  %53 = load i8, i8* %52, align 1
  %54 = call i8* @strchr(i8* %48, i8 signext %53)
  store i8* %54, i8** %20, align 8
  %55 = load i8*, i8** %20, align 8
  %56 = icmp ne i8* %55, null
  br i1 %56, label %73, label %57

57:                                               ; preds = %44
  %58 = load i8*, i8** %19, align 8
  %59 = load i8*, i8** %10, align 8
  %60 = load i32, i32* %18, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i8, i8* %59, i64 %61
  %63 = load i8, i8* %62, align 1
  %64 = call i8* @strchr(i8* %58, i8 signext %63)
  store i8* %64, i8** %20, align 8
  %65 = load i8*, i8** %20, align 8
  %66 = icmp ne i8* %65, null
  br i1 %66, label %72, label %67

67:                                               ; preds = %57
  %68 = load i32, i32* @stderr, align 4
  %69 = load i8*, i8** %10, align 8
  %70 = call i32 @fprintf(i32 %68, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i8* %69)
  %71 = load i32*, i32** %13, align 8
  store i32 -1, i32* %71, align 4
  store i32 0, i32* %7, align 4
  br label %116

72:                                               ; preds = %57
  br label %73

73:                                               ; preds = %72, %44
  %74 = load i8*, i8** %20, align 8
  %75 = load i8*, i8** %19, align 8
  %76 = ptrtoint i8* %74 to i64
  %77 = ptrtoint i8* %75 to i64
  %78 = sub i64 %76, %77
  %79 = trunc i64 %78 to i32
  store i32 %79, i32* %16, align 4
  %80 = load i32, i32* %9, align 4
  %81 = load i32, i32* %16, align 4
  %82 = sdiv i32 %81, 8
  %83 = add nsw i32 %80, %82
  %84 = call i32 @get_ins_part(i32 %83, i32 1)
  store i32 %84, i32* %15, align 4
  %85 = load i32, i32* %16, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %17, align 4
  %87 = load i32, i32* %14, align 4
  %88 = mul nsw i32 %87, 2
  %89 = load i32, i32* %15, align 4
  %90 = load i32, i32* %16, align 4
  %91 = sub nsw i32 1023, %90
  %92 = srem i32 %91, 8
  %93 = ashr i32 %89, %92
  %94 = and i32 %93, 1
  %95 = or i32 %88, %94
  store i32 %95, i32* %14, align 4
  %96 = load i8*, i8** %19, align 8
  %97 = load i32, i32* %17, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds i8, i8* %96, i64 %98
  %100 = load i8, i8* %99, align 1
  %101 = icmp ne i8 %100, 0
  br i1 %101, label %103, label %102

102:                                              ; preds = %73
  store i32 0, i32* %17, align 4
  br label %103

103:                                              ; preds = %102, %73
  br label %104

104:                                              ; preds = %103
  %105 = load i32, i32* %18, align 4
  %106 = add nsw i32 %105, 1
  store i32 %106, i32* %18, align 4
  br label %40

107:                                              ; preds = %40
  %108 = load i64, i64* @C55PLUS_DEBUG, align 8
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %114

110:                                              ; preds = %107
  %111 = load i32, i32* %14, align 4
  %112 = call i32 @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i32 %111)
  %113 = call i32 (...) @getchar()
  br label %114

114:                                              ; preds = %110, %107
  %115 = load i32, i32* %14, align 4
  store i32 %115, i32* %7, align 4
  br label %116

116:                                              ; preds = %114, %67, %26
  %117 = load i32, i32* %7, align 4
  ret i32 %117
}

declare dso_local i32 @get_q_bits(i32, i8*, i32, i32*) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @fprintf(i32, i8*, i8*) #1

declare dso_local i32 @get_ins_part(i32, i32) #1

declare dso_local i32 @printf(i8*, i32) #1

declare dso_local i32 @getchar(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
