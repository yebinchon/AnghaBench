; ModuleID = '/home/carl/AnghaBench/radare2/libr/asm/p/extr_cs_mnemonics.c_mnemonics.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/asm/p/extr_cs_mnemonics.c_mnemonics.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 (%struct.TYPE_6__*, i32*, i32*, i32)* }

@cd = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"[\22%s\22]\0A\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"[\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"\22,\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"\22]\0A\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.TYPE_6__*, i32, i32)* @mnemonics to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @mnemonics(%struct.TYPE_6__* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i8*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 0
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  %16 = load i32 (%struct.TYPE_6__*, i32*, i32*, i32)*, i32 (%struct.TYPE_6__*, i32*, i32*, i32)** %15, align 8
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %18 = call i32 %16(%struct.TYPE_6__* %17, i32* null, i32* null, i32 -1)
  %19 = load i32, i32* %6, align 4
  %20 = icmp ne i32 %19, -1
  br i1 %20, label %21, label %45

21:                                               ; preds = %3
  %22 = load i32, i32* @cd, align 4
  %23 = load i32, i32* %6, align 4
  %24 = call i8* @cs_insn_name(i32 %22, i32 %23)
  store i8* %24, i8** %9, align 8
  %25 = load i32, i32* %7, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %36

27:                                               ; preds = %21
  %28 = load i8*, i8** %9, align 8
  %29 = icmp ne i8* %28, null
  br i1 %29, label %30, label %33

30:                                               ; preds = %27
  %31 = load i8*, i8** %9, align 8
  %32 = call i8* @r_str_newf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8* %31)
  br label %34

33:                                               ; preds = %27
  br label %34

34:                                               ; preds = %33, %30
  %35 = phi i8* [ %32, %30 ], [ null, %33 ]
  store i8* %35, i8** %4, align 8
  br label %95

36:                                               ; preds = %21
  %37 = load i8*, i8** %9, align 8
  %38 = icmp ne i8* %37, null
  br i1 %38, label %39, label %42

39:                                               ; preds = %36
  %40 = load i8*, i8** %9, align 8
  %41 = call i8* @strdup(i8* %40)
  br label %43

42:                                               ; preds = %36
  br label %43

43:                                               ; preds = %42, %39
  %44 = phi i8* [ %41, %39 ], [ null, %42 ]
  store i8* %44, i8** %4, align 8
  br label %95

45:                                               ; preds = %3
  %46 = call i32* @r_strbuf_new(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0))
  store i32* %46, i32** %10, align 8
  %47 = load i32, i32* %7, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %45
  %50 = load i32*, i32** %10, align 8
  %51 = call i32 @r_strbuf_append(i32* %50, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  br label %52

52:                                               ; preds = %49, %45
  store i32 1, i32* %8, align 4
  br label %53

53:                                               ; preds = %89, %52
  %54 = load i32, i32* @cd, align 4
  %55 = load i32, i32* %8, align 4
  %56 = call i8* @cs_insn_name(i32 %54, i32 %55)
  store i8* %56, i8** %11, align 8
  %57 = load i8*, i8** %11, align 8
  %58 = icmp ne i8* %57, null
  br i1 %58, label %60, label %59

59:                                               ; preds = %53
  br label %92

60:                                               ; preds = %53
  %61 = load i32, i32* %7, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %66

63:                                               ; preds = %60
  %64 = load i32*, i32** %10, align 8
  %65 = call i32 @r_strbuf_append(i32* %64, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  br label %66

66:                                               ; preds = %63, %60
  %67 = load i32*, i32** %10, align 8
  %68 = load i8*, i8** %11, align 8
  %69 = call i32 @r_strbuf_append(i32* %67, i8* %68)
  %70 = load i32, i32* %7, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %85

72:                                               ; preds = %66
  %73 = load i32, i32* @cd, align 4
  %74 = load i32, i32* %8, align 4
  %75 = add nsw i32 %74, 1
  %76 = call i8* @cs_insn_name(i32 %73, i32 %75)
  %77 = icmp ne i8* %76, null
  br i1 %77, label %78, label %81

78:                                               ; preds = %72
  %79 = load i32*, i32** %10, align 8
  %80 = call i32 @r_strbuf_append(i32* %79, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0))
  br label %84

81:                                               ; preds = %72
  %82 = load i32*, i32** %10, align 8
  %83 = call i32 @r_strbuf_append(i32* %82, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  br label %84

84:                                               ; preds = %81, %78
  br label %88

85:                                               ; preds = %66
  %86 = load i32*, i32** %10, align 8
  %87 = call i32 @r_strbuf_append(i32* %86, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0))
  br label %88

88:                                               ; preds = %85, %84
  br label %89

89:                                               ; preds = %88
  %90 = load i32, i32* %8, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %8, align 4
  br label %53

92:                                               ; preds = %59
  %93 = load i32*, i32** %10, align 8
  %94 = call i8* @r_strbuf_drain(i32* %93)
  store i8* %94, i8** %4, align 8
  br label %95

95:                                               ; preds = %92, %43, %34
  %96 = load i8*, i8** %4, align 8
  ret i8* %96
}

declare dso_local i8* @cs_insn_name(i32, i32) #1

declare dso_local i8* @r_str_newf(i8*, i8*) #1

declare dso_local i8* @strdup(i8*) #1

declare dso_local i32* @r_strbuf_new(i8*) #1

declare dso_local i32 @r_strbuf_append(i32*, i8*) #1

declare dso_local i8* @r_strbuf_drain(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
