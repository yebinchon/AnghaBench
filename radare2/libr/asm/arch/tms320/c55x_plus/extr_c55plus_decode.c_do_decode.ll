; ModuleID = '/home/carl/AnghaBench/radare2/libr/asm/arch/tms320/c55x_plus/extr_c55plus_decode.c_do_decode.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/asm/arch/tms320/c55x_plus/extr_c55plus_decode.c_do_decode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@C55PLUS_DEBUG = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [18 x i8] c"MAGIC VALUE 0x%x\0A\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c".byte 0x\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32, i32, i32, i32*, i32*, i32*)* @do_decode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @do_decode(i32 %0, i32 %1, i32 %2, i32* %3, i32* %4, i32* %5) #0 {
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i8*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i32, align 4
  store i32 %0, i32* %8, align 4
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32* %3, i32** %11, align 8
  store i32* %4, i32** %12, align 8
  store i32* %5, i32** %13, align 8
  store i8* null, i8** %19, align 8
  store i8* null, i8** %20, align 8
  store i32 2048, i32* %21, align 4
  %22 = load i32*, i32** %11, align 8
  store i32 0, i32* %22, align 4
  store i32 0, i32* %16, align 4
  store i32 0, i32* %18, align 4
  store i32 0, i32* %17, align 4
  %23 = load i32, i32* %9, align 4
  %24 = load i32, i32* %8, align 4
  %25 = add nsw i32 %23, %24
  %26 = call i32 @get_hash_code(i32 %25)
  store i32 %26, i32* %14, align 4
  %27 = load i32, i32* %14, align 4
  %28 = call i64 @is_hash(i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %47

30:                                               ; preds = %6
  %31 = load i32, i32* %14, align 4
  store i32 %31, i32* %15, align 4
  %32 = load i32, i32* %8, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %8, align 4
  %34 = load i32, i32* %14, align 4
  %35 = load i32*, i32** %13, align 8
  %36 = call i32 @set_magic_value(i32* %21, i32 %34, i32* %35)
  %37 = load i32*, i32** %13, align 8
  %38 = load i32, i32* %37, align 4
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %30
  store i8* null, i8** %7, align 8
  br label %122

41:                                               ; preds = %30
  %42 = load i32, i32* %9, align 4
  %43 = load i32, i32* %8, align 4
  %44 = add nsw i32 %42, %43
  %45 = call i32 @get_hash_code(i32 %44)
  store i32 %45, i32* %14, align 4
  %46 = load i32*, i32** %11, align 8
  store i32 1, i32* %46, align 4
  br label %48

47:                                               ; preds = %6
  store i32 547, i32* %15, align 4
  br label %48

48:                                               ; preds = %47, %41
  %49 = load i32*, i32** %12, align 8
  %50 = icmp ne i32* %49, null
  br i1 %50, label %51, label %54

51:                                               ; preds = %48
  %52 = load i32, i32* %14, align 4
  %53 = load i32*, i32** %12, align 8
  store i32 %52, i32* %53, align 4
  br label %54

54:                                               ; preds = %51, %48
  %55 = load i64, i64* @C55PLUS_DEBUG, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %54
  %58 = call i32 @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 2048)
  br label %59

59:                                               ; preds = %57, %54
  %60 = load i32, i32* %15, align 4
  %61 = icmp eq i32 %60, 481
  br i1 %61, label %65, label %62

62:                                               ; preds = %59
  %63 = load i32, i32* %15, align 4
  %64 = icmp eq i32 %63, 482
  br i1 %64, label %65, label %80

65:                                               ; preds = %62, %59
  %66 = load i32, i32* %15, align 4
  %67 = load i32, i32* %9, align 4
  %68 = load i32, i32* %8, align 4
  %69 = load i32, i32* %21, align 4
  %70 = load i32, i32* %10, align 4
  %71 = load i32*, i32** %13, align 8
  %72 = call i8* @decode_ins(i32 %66, i32 %67, i32 %68, i32* %17, i32* %16, i32* %18, i32 %69, i32 %70, i32* %71)
  store i8* %72, i8** %20, align 8
  %73 = load i32*, i32** %13, align 8
  %74 = load i32, i32* %73, align 4
  %75 = icmp slt i32 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %65
  store i8* null, i8** %7, align 8
  br label %122

77:                                               ; preds = %65
  %78 = load i8*, i8** %20, align 8
  %79 = call i8* @strcat_dup(i8* %78, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i32 1)
  store i8* %79, i8** %20, align 8
  br label %80

80:                                               ; preds = %77, %62
  %81 = load i32, i32* %14, align 4
  %82 = icmp eq i32 %81, 547
  br i1 %82, label %83, label %96

83:                                               ; preds = %80
  %84 = load i8*, i8** %20, align 8
  %85 = call i8* @strcat_dup(i8* %84, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i32 1)
  store i8* %85, i8** %19, align 8
  %86 = load i32, i32* %9, align 4
  %87 = call i32 @get_ins_part(i32 %86, i32 1)
  %88 = call i8* @get_hex_str(i32 %87)
  store i8* %88, i8** %20, align 8
  %89 = load i8*, i8** %19, align 8
  %90 = load i8*, i8** %20, align 8
  %91 = call i8* @strcat_dup(i8* %89, i8* %90, i32 2)
  store i8* %91, i8** %19, align 8
  %92 = load i32*, i32** %11, align 8
  %93 = load i32, i32* %92, align 4
  %94 = add nsw i32 %93, 1
  %95 = load i32*, i32** %11, align 8
  store i32 %94, i32* %95, align 4
  br label %120

96:                                               ; preds = %80
  %97 = load i8*, i8** %20, align 8
  %98 = call i32 @free(i8* %97)
  %99 = load i32, i32* %14, align 4
  %100 = load i32, i32* %9, align 4
  %101 = load i32, i32* %8, align 4
  %102 = load i32, i32* %21, align 4
  %103 = load i32, i32* %10, align 4
  %104 = load i32*, i32** %13, align 8
  %105 = call i8* @decode_ins(i32 %99, i32 %100, i32 %101, i32* %17, i32* %16, i32* %18, i32 %102, i32 %103, i32* %104)
  store i8* %105, i8** %20, align 8
  %106 = load i32*, i32** %13, align 8
  %107 = load i32, i32* %106, align 4
  %108 = icmp slt i32 %107, 0
  br i1 %108, label %109, label %112

109:                                              ; preds = %96
  %110 = load i8*, i8** %20, align 8
  %111 = call i32 @free(i8* %110)
  store i8* null, i8** %7, align 8
  br label %122

112:                                              ; preds = %96
  %113 = load i8*, i8** %20, align 8
  %114 = load i8*, i8** %19, align 8
  %115 = call i8* @strcat_dup(i8* %113, i8* %114, i32 1)
  store i8* %115, i8** %19, align 8
  %116 = load i32, i32* %17, align 4
  %117 = load i32*, i32** %11, align 8
  %118 = load i32, i32* %117, align 4
  %119 = add nsw i32 %118, %116
  store i32 %119, i32* %117, align 4
  br label %120

120:                                              ; preds = %112, %83
  %121 = load i8*, i8** %19, align 8
  store i8* %121, i8** %7, align 8
  br label %122

122:                                              ; preds = %120, %109, %76, %40
  %123 = load i8*, i8** %7, align 8
  ret i8* %123
}

declare dso_local i32 @get_hash_code(i32) #1

declare dso_local i64 @is_hash(i32) #1

declare dso_local i32 @set_magic_value(i32*, i32, i32*) #1

declare dso_local i32 @printf(i8*, i32) #1

declare dso_local i8* @decode_ins(i32, i32, i32, i32*, i32*, i32*, i32, i32, i32*) #1

declare dso_local i8* @strcat_dup(i8*, i8*, i32) #1

declare dso_local i8* @get_hex_str(i32) #1

declare dso_local i32 @get_ins_part(i32, i32) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
