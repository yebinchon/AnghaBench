; ModuleID = '/home/carl/AnghaBench/radare2/libr/asm/p/extr_asm_bf.c_disassemble.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/asm/p/extr_asm_bf.c_disassemble.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }

@.str = private unnamed_addr constant [8 x i8] c"invalid\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"while [ptr]\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"loop\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"add ptr\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"inc ptr\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"sub ptr\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"dec ptr\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"add [ptr]\00", align 1
@.str.8 = private unnamed_addr constant [10 x i8] c"inc [ptr]\00", align 1
@.str.9 = private unnamed_addr constant [10 x i8] c"sub [ptr]\00", align 1
@.str.10 = private unnamed_addr constant [10 x i8] c"dec [ptr]\00", align 1
@.str.11 = private unnamed_addr constant [9 x i8] c"in [ptr]\00", align 1
@.str.12 = private unnamed_addr constant [10 x i8] c"out [ptr]\00", align 1
@.str.13 = private unnamed_addr constant [5 x i8] c"trap\00", align 1
@.str.14 = private unnamed_addr constant [4 x i8] c"nop\00", align 1
@.str.15 = private unnamed_addr constant [7 x i8] c"%s, %d\00", align 1
@.str.16 = private unnamed_addr constant [6 x i8] c"%s %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_3__*, i32*, i32)* @disassemble to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @disassemble(i32* %0, %struct.TYPE_3__* %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_3__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  store i32* %0, i32** %5, align 8
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32 %3, i32* %8, align 4
  store i32 1, i32* %10, align 4
  %13 = load i32*, i32** %7, align 8
  %14 = load i32, i32* %13, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %45

16:                                               ; preds = %4
  %17 = load i32*, i32** %7, align 8
  %18 = load i32, i32* %17, align 4
  %19 = icmp ne i32 %18, 255
  br i1 %19, label %20, label %45

20:                                               ; preds = %16
  %21 = load i32*, i32** %7, align 8
  %22 = getelementptr inbounds i32, i32* %21, i64 1
  store i32* %22, i32** %9, align 8
  br label %23

23:                                               ; preds = %41, %20
  %24 = load i32*, i32** %9, align 8
  %25 = load i32*, i32** %7, align 8
  %26 = load i32, i32* %8, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i32, i32* %25, i64 %27
  %29 = icmp ult i32* %24, %28
  br i1 %29, label %30, label %36

30:                                               ; preds = %23
  %31 = load i32*, i32** %9, align 8
  %32 = load i32, i32* %31, align 4
  %33 = load i32*, i32** %7, align 8
  %34 = load i32, i32* %33, align 4
  %35 = icmp eq i32 %32, %34
  br label %36

36:                                               ; preds = %30, %23
  %37 = phi i1 [ false, %23 ], [ %35, %30 ]
  br i1 %37, label %38, label %44

38:                                               ; preds = %36
  %39 = load i32, i32* %10, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %10, align 4
  br label %41

41:                                               ; preds = %38
  %42 = load i32*, i32** %9, align 8
  %43 = getelementptr inbounds i32, i32* %42, i32 1
  store i32* %43, i32** %9, align 8
  br label %23

44:                                               ; preds = %36
  br label %45

45:                                               ; preds = %44, %16, %4
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8** %11, align 8
  %46 = load i32*, i32** %7, align 8
  %47 = load i32, i32* %46, align 4
  switch i32 %47, label %73 [
    i32 91, label %48
    i32 93, label %49
    i32 62, label %50
    i32 60, label %55
    i32 43, label %60
    i32 45, label %65
    i32 44, label %70
    i32 46, label %71
    i32 255, label %72
    i32 0, label %72
  ]

48:                                               ; preds = %45
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i8** %11, align 8
  br label %74

49:                                               ; preds = %45
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8** %11, align 8
  br label %74

50:                                               ; preds = %45
  %51 = load i32, i32* %10, align 4
  %52 = icmp sgt i32 %51, 1
  %53 = zext i1 %52 to i64
  %54 = select i1 %52, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0)
  store i8* %54, i8** %11, align 8
  br label %74

55:                                               ; preds = %45
  %56 = load i32, i32* %10, align 4
  %57 = icmp sgt i32 %56, 1
  %58 = zext i1 %57 to i64
  %59 = select i1 %57, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0)
  store i8* %59, i8** %11, align 8
  br label %74

60:                                               ; preds = %45
  %61 = load i32, i32* %10, align 4
  %62 = icmp sgt i32 %61, 1
  %63 = zext i1 %62 to i64
  %64 = select i1 %62, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i64 0, i64 0)
  store i8* %64, i8** %11, align 8
  br label %74

65:                                               ; preds = %45
  %66 = load i32, i32* %10, align 4
  %67 = icmp sgt i32 %66, 1
  %68 = zext i1 %67 to i64
  %69 = select i1 %67, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i64 0, i64 0)
  store i8* %69, i8** %11, align 8
  br label %74

70:                                               ; preds = %45
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.11, i64 0, i64 0), i8** %11, align 8
  br label %74

71:                                               ; preds = %45
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.12, i64 0, i64 0), i8** %11, align 8
  br label %74

72:                                               ; preds = %45, %45
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i64 0, i64 0), i8** %11, align 8
  br label %74

73:                                               ; preds = %45
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14, i64 0, i64 0), i8** %11, align 8
  br label %74

74:                                               ; preds = %73, %72, %71, %70, %65, %60, %55, %50, %49, %48
  %75 = load i32, i32* %10, align 4
  %76 = icmp sgt i32 %75, 1
  br i1 %76, label %77, label %87

77:                                               ; preds = %74
  %78 = load i8*, i8** %11, align 8
  %79 = call i64 @strchr(i8* %78, i8 signext 32)
  %80 = icmp ne i64 %79, 0
  %81 = zext i1 %80 to i64
  %82 = select i1 %80, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.15, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.16, i64 0, i64 0)
  store i8* %82, i8** %12, align 8
  %83 = load i8*, i8** %12, align 8
  %84 = load i8*, i8** %11, align 8
  %85 = load i32, i32* %10, align 4
  %86 = call i8* @sdb_fmt(i8* %83, i8* %84, i32 %85)
  store i8* %86, i8** %11, align 8
  br label %87

87:                                               ; preds = %77, %74
  %88 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %89 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %88, i32 0, i32 1
  %90 = load i8*, i8** %11, align 8
  %91 = call i32 @r_strbuf_set(i32* %89, i8* %90)
  %92 = load i32, i32* %10, align 4
  %93 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %94 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %93, i32 0, i32 0
  store i32 %92, i32* %94, align 4
  %95 = load i32, i32* %10, align 4
  ret i32 %95
}

declare dso_local i64 @strchr(i8*, i8 signext) #1

declare dso_local i8* @sdb_fmt(i8*, i8*, i32) #1

declare dso_local i32 @r_strbuf_set(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
