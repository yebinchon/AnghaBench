; ModuleID = '/home/carl/AnghaBench/mjolnir/Mjolnir/lua/extr_liolib.c_read_number.c'
source_filename = "/home/carl/AnghaBench/mjolnir/Mjolnir/lua/extr_liolib.c_read_number.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i8*, i32*, i32 }

@.str = private unnamed_addr constant [3 x i8] c"-+\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"00\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"xX\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"pP\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"eE\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*)* @read_number to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_number(i32* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_4__, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca [2 x i8], align 1
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %10 = load i32*, i32** %5, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 2
  store i32* %10, i32** %11, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 0
  store i64 0, i64* %12, align 8
  %13 = call signext i8 (...) @lua_getlocaledecpoint()
  %14 = getelementptr inbounds [2 x i8], [2 x i8]* %9, i64 0, i64 0
  store i8 %13, i8* %14, align 1
  %15 = getelementptr inbounds [2 x i8], [2 x i8]* %9, i64 0, i64 1
  store i8 46, i8* %15, align 1
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 2
  %17 = load i32*, i32** %16, align 8
  %18 = call i32 @l_lockfile(i32* %17)
  br label %19

19:                                               ; preds = %24, %2
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 2
  %21 = load i32*, i32** %20, align 8
  %22 = call i32 @l_getc(i32* %21)
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 3
  store i32 %22, i32* %23, align 8
  br label %24

24:                                               ; preds = %19
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 3
  %26 = load i32, i32* %25, align 8
  %27 = call i64 @isspace(i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %19, label %29

29:                                               ; preds = %24
  %30 = call i64 @test2(%struct.TYPE_4__* %6, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %31 = call i64 @test2(%struct.TYPE_4__* %6, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %39

33:                                               ; preds = %29
  %34 = call i64 @test2(%struct.TYPE_4__* %6, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %33
  store i32 1, i32* %8, align 4
  br label %38

37:                                               ; preds = %33
  store i32 1, i32* %7, align 4
  br label %38

38:                                               ; preds = %37, %36
  br label %39

39:                                               ; preds = %38, %29
  %40 = load i32, i32* %8, align 4
  %41 = call i64 @readdigits(%struct.TYPE_4__* %6, i32 %40)
  %42 = load i32, i32* %7, align 4
  %43 = sext i32 %42 to i64
  %44 = add nsw i64 %43, %41
  %45 = trunc i64 %44 to i32
  store i32 %45, i32* %7, align 4
  %46 = getelementptr inbounds [2 x i8], [2 x i8]* %9, i64 0, i64 0
  %47 = call i64 @test2(%struct.TYPE_4__* %6, i8* %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %56

49:                                               ; preds = %39
  %50 = load i32, i32* %8, align 4
  %51 = call i64 @readdigits(%struct.TYPE_4__* %6, i32 %50)
  %52 = load i32, i32* %7, align 4
  %53 = sext i32 %52 to i64
  %54 = add nsw i64 %53, %51
  %55 = trunc i64 %54 to i32
  store i32 %55, i32* %7, align 4
  br label %56

56:                                               ; preds = %49, %39
  %57 = load i32, i32* %7, align 4
  %58 = icmp sgt i32 %57, 0
  br i1 %58, label %59, label %69

59:                                               ; preds = %56
  %60 = load i32, i32* %8, align 4
  %61 = icmp ne i32 %60, 0
  %62 = zext i1 %61 to i64
  %63 = select i1 %61, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0)
  %64 = call i64 @test2(%struct.TYPE_4__* %6, i8* %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %69

66:                                               ; preds = %59
  %67 = call i64 @test2(%struct.TYPE_4__* %6, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %68 = call i64 @readdigits(%struct.TYPE_4__* %6, i32 0)
  br label %69

69:                                               ; preds = %66, %59, %56
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 3
  %71 = load i32, i32* %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 2
  %73 = load i32*, i32** %72, align 8
  %74 = call i32 @ungetc(i32 %71, i32* %73)
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 2
  %76 = load i32*, i32** %75, align 8
  %77 = call i32 @l_unlockfile(i32* %76)
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 1
  %79 = load i8*, i8** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = getelementptr inbounds i8, i8* %79, i64 %81
  store i8 0, i8* %82, align 1
  %83 = load i32*, i32** %4, align 8
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 1
  %85 = load i8*, i8** %84, align 8
  %86 = call i64 @lua_stringtonumber(i32* %83, i8* %85)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %89

88:                                               ; preds = %69
  store i32 1, i32* %3, align 4
  br label %92

89:                                               ; preds = %69
  %90 = load i32*, i32** %4, align 8
  %91 = call i32 @lua_pushnil(i32* %90)
  store i32 0, i32* %3, align 4
  br label %92

92:                                               ; preds = %89, %88
  %93 = load i32, i32* %3, align 4
  ret i32 %93
}

declare dso_local signext i8 @lua_getlocaledecpoint(...) #1

declare dso_local i32 @l_lockfile(i32*) #1

declare dso_local i32 @l_getc(i32*) #1

declare dso_local i64 @isspace(i32) #1

declare dso_local i64 @test2(%struct.TYPE_4__*, i8*) #1

declare dso_local i64 @readdigits(%struct.TYPE_4__*, i32) #1

declare dso_local i32 @ungetc(i32, i32*) #1

declare dso_local i32 @l_unlockfile(i32*) #1

declare dso_local i64 @lua_stringtonumber(i32*, i8*) #1

declare dso_local i32 @lua_pushnil(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
