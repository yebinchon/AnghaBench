; ModuleID = '/home/carl/AnghaBench/radare2/libr/core/extr_cmd_egg.c_cmd_egg_compile.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/core/extr_cmd_egg.c_cmd_egg_compile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [14 x i8] c"egg.shellcode\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"Unknown shellcode '%s'\0A\00", align 1
@.str.2 = private unnamed_addr constant [39 x i8] c"Setup a shellcode before (gi command)\0A\00", align 1
@.str.3 = private unnamed_addr constant [34 x i8] c"r_egg_assemble: invalid assembly\0A\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"egg.padding\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"egg.encoder\00", align 1
@.str.6 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"key\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @cmd_egg_compile to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cmd_egg_compile(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  store i32* %0, i32** %3, align 8
  store i32 0, i32* %5, align 4
  %7 = load i32*, i32** %3, align 8
  %8 = call i8* @r_egg_option_get(i32* %7, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  store i8* %8, i8** %6, align 8
  %9 = load i8*, i8** %6, align 8
  %10 = icmp ne i8* %9, null
  br i1 %10, label %11, label %29

11:                                               ; preds = %1
  %12 = load i8*, i8** %6, align 8
  %13 = load i8, i8* %12, align 1
  %14 = sext i8 %13 to i32
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %29

16:                                               ; preds = %11
  %17 = load i32*, i32** %3, align 8
  %18 = load i8*, i8** %6, align 8
  %19 = call i32 @r_egg_shellcode(i32* %17, i8* %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %26, label %21

21:                                               ; preds = %16
  %22 = load i8*, i8** %6, align 8
  %23 = call i32 (i8*, ...) @eprintf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i8* %22)
  %24 = load i8*, i8** %6, align 8
  %25 = call i32 @free(i8* %24)
  store i32 0, i32* %2, align 4
  br label %92

26:                                               ; preds = %16
  %27 = load i8*, i8** %6, align 8
  %28 = call i32 @free(i8* %27)
  br label %33

29:                                               ; preds = %11, %1
  %30 = call i32 (i8*, ...) @eprintf(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0))
  %31 = load i8*, i8** %6, align 8
  %32 = call i32 @free(i8* %31)
  store i32 0, i32* %2, align 4
  br label %92

33:                                               ; preds = %26
  %34 = load i32*, i32** %3, align 8
  %35 = call i32 @r_egg_compile(i32* %34)
  %36 = load i32*, i32** %3, align 8
  %37 = call i32 @r_egg_assemble(i32* %36)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %41, label %39

39:                                               ; preds = %33
  %40 = call i32 (i8*, ...) @eprintf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %92

41:                                               ; preds = %33
  %42 = load i32*, i32** %3, align 8
  %43 = call i8* @r_egg_option_get(i32* %42, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0))
  store i8* %43, i8** %6, align 8
  %44 = load i8*, i8** %6, align 8
  %45 = icmp ne i8* %44, null
  br i1 %45, label %46, label %57

46:                                               ; preds = %41
  %47 = load i8*, i8** %6, align 8
  %48 = load i8, i8* %47, align 1
  %49 = sext i8 %48 to i32
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %57

51:                                               ; preds = %46
  %52 = load i32*, i32** %3, align 8
  %53 = load i8*, i8** %6, align 8
  %54 = call i32 @r_egg_padding(i32* %52, i8* %53)
  %55 = load i8*, i8** %6, align 8
  %56 = call i32 @free(i8* %55)
  br label %57

57:                                               ; preds = %51, %46, %41
  %58 = load i32*, i32** %3, align 8
  %59 = call i8* @r_egg_option_get(i32* %58, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0))
  store i8* %59, i8** %6, align 8
  %60 = load i8*, i8** %6, align 8
  %61 = icmp ne i8* %60, null
  br i1 %61, label %62, label %73

62:                                               ; preds = %57
  %63 = load i8*, i8** %6, align 8
  %64 = load i8, i8* %63, align 1
  %65 = sext i8 %64 to i32
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %73

67:                                               ; preds = %62
  %68 = load i32*, i32** %3, align 8
  %69 = load i8*, i8** %6, align 8
  %70 = call i32 @r_egg_encode(i32* %68, i8* %69)
  %71 = load i8*, i8** %6, align 8
  %72 = call i32 @free(i8* %71)
  br label %73

73:                                               ; preds = %67, %62, %57
  %74 = load i32*, i32** %3, align 8
  %75 = call i32* @r_egg_get_bin(i32* %74)
  store i32* %75, i32** %4, align 8
  %76 = icmp ne i32* %75, null
  br i1 %76, label %77, label %80

77:                                               ; preds = %73
  %78 = load i32*, i32** %4, align 8
  %79 = call i32 @showBuffer(i32* %78)
  store i32 1, i32* %5, align 4
  br label %80

80:                                               ; preds = %77, %73
  %81 = load i32*, i32** %3, align 8
  %82 = call i32 @r_egg_option_set(i32* %81, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.6, i64 0, i64 0))
  %83 = load i32*, i32** %3, align 8
  %84 = call i32 @r_egg_option_set(i32* %83, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.6, i64 0, i64 0))
  %85 = load i32*, i32** %3, align 8
  %86 = call i32 @r_egg_option_set(i32* %85, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.6, i64 0, i64 0))
  %87 = load i32*, i32** %3, align 8
  %88 = call i32 @r_egg_option_set(i32* %87, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.6, i64 0, i64 0))
  %89 = load i32*, i32** %3, align 8
  %90 = call i32 @r_egg_reset(i32* %89)
  %91 = load i32, i32* %5, align 4
  store i32 %91, i32* %2, align 4
  br label %92

92:                                               ; preds = %80, %39, %29, %21
  %93 = load i32, i32* %2, align 4
  ret i32 %93
}

declare dso_local i8* @r_egg_option_get(i32*, i8*) #1

declare dso_local i32 @r_egg_shellcode(i32*, i8*) #1

declare dso_local i32 @eprintf(i8*, ...) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @r_egg_compile(i32*) #1

declare dso_local i32 @r_egg_assemble(i32*) #1

declare dso_local i32 @r_egg_padding(i32*, i8*) #1

declare dso_local i32 @r_egg_encode(i32*, i8*) #1

declare dso_local i32* @r_egg_get_bin(i32*) #1

declare dso_local i32 @showBuffer(i32*) #1

declare dso_local i32 @r_egg_option_set(i32*, i8*, i8*) #1

declare dso_local i32 @r_egg_reset(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
