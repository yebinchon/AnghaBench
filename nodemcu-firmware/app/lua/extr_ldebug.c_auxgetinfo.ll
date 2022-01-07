; ModuleID = '/home/carl/AnghaBench/nodemcu-firmware/app/lua/extr_ldebug.c_auxgetinfo.c'
source_filename = "/home/carl/AnghaBench/nodemcu-firmware/app/lua/extr_ldebug.c_auxgetinfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i8*, i32*, i32 }
%struct.TYPE_11__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*, %struct.TYPE_10__*, %struct.TYPE_11__*, i8*, i32*)* @auxgetinfo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @auxgetinfo(i32* %0, i8* %1, %struct.TYPE_10__* %2, %struct.TYPE_11__* %3, i8* %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.TYPE_10__*, align 8
  %11 = alloca %struct.TYPE_11__*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  store i32* %0, i32** %8, align 8
  store i8* %1, i8** %9, align 8
  store %struct.TYPE_10__* %2, %struct.TYPE_10__** %10, align 8
  store %struct.TYPE_11__* %3, %struct.TYPE_11__** %11, align 8
  store i8* %4, i8** %12, align 8
  store i32* %5, i32** %13, align 8
  store i32 1, i32* %14, align 4
  %15 = load i8*, i8** %12, align 8
  %16 = icmp eq i8* %15, null
  br i1 %16, label %17, label %24

17:                                               ; preds = %6
  %18 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %19 = icmp eq %struct.TYPE_11__* %18, null
  br i1 %19, label %20, label %24

20:                                               ; preds = %17
  %21 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %22 = call i32 @info_tailcall(%struct.TYPE_10__* %21)
  %23 = load i32, i32* %14, align 4
  store i32 %23, i32* %7, align 4
  br label %95

24:                                               ; preds = %17, %6
  br label %25

25:                                               ; preds = %90, %24
  %26 = load i8*, i8** %9, align 8
  %27 = load i8, i8* %26, align 1
  %28 = icmp ne i8 %27, 0
  br i1 %28, label %29, label %93

29:                                               ; preds = %25
  %30 = load i8*, i8** %9, align 8
  %31 = load i8, i8* %30, align 1
  %32 = sext i8 %31 to i32
  switch i32 %32, label %88 [
    i32 83, label %33
    i32 108, label %38
    i32 117, label %50
    i32 110, label %63
    i32 76, label %87
    i32 102, label %87
  ]

33:                                               ; preds = %29
  %34 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %35 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %36 = load i8*, i8** %12, align 8
  %37 = call i32 @funcinfo(%struct.TYPE_10__* %34, %struct.TYPE_11__* %35, i8* %36)
  br label %89

38:                                               ; preds = %29
  %39 = load i32*, i32** %13, align 8
  %40 = icmp ne i32* %39, null
  br i1 %40, label %41, label %45

41:                                               ; preds = %38
  %42 = load i32*, i32** %8, align 8
  %43 = load i32*, i32** %13, align 8
  %44 = call i32 @currentline(i32* %42, i32* %43)
  br label %46

45:                                               ; preds = %38
  br label %46

46:                                               ; preds = %45, %41
  %47 = phi i32 [ %44, %41 ], [ -1, %45 ]
  %48 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %49 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %48, i32 0, i32 0
  store i32 %47, i32* %49, align 8
  br label %89

50:                                               ; preds = %29
  %51 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %52 = icmp ne %struct.TYPE_11__* %51, null
  br i1 %52, label %53, label %58

53:                                               ; preds = %50
  %54 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %55 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  br label %59

58:                                               ; preds = %50
  br label %59

59:                                               ; preds = %58, %53
  %60 = phi i32 [ %57, %53 ], [ 0, %58 ]
  %61 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %62 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %61, i32 0, i32 3
  store i32 %60, i32* %62, align 8
  br label %89

63:                                               ; preds = %29
  %64 = load i32*, i32** %13, align 8
  %65 = icmp ne i32* %64, null
  br i1 %65, label %66, label %72

66:                                               ; preds = %63
  %67 = load i32*, i32** %8, align 8
  %68 = load i32*, i32** %13, align 8
  %69 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %70 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %69, i32 0, i32 2
  %71 = call i8* @getfuncname(i32* %67, i32* %68, i32** %70)
  br label %73

72:                                               ; preds = %63
  br label %73

73:                                               ; preds = %72, %66
  %74 = phi i8* [ %71, %66 ], [ null, %72 ]
  %75 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %76 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %75, i32 0, i32 1
  store i8* %74, i8** %76, align 8
  %77 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %78 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %77, i32 0, i32 1
  %79 = load i8*, i8** %78, align 8
  %80 = icmp eq i8* %79, null
  br i1 %80, label %81, label %86

81:                                               ; preds = %73
  %82 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %83 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %82, i32 0, i32 1
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8** %83, align 8
  %84 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %85 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %84, i32 0, i32 2
  store i32* null, i32** %85, align 8
  br label %86

86:                                               ; preds = %81, %73
  br label %89

87:                                               ; preds = %29, %29
  br label %89

88:                                               ; preds = %29
  store i32 0, i32* %14, align 4
  br label %89

89:                                               ; preds = %88, %87, %86, %59, %46, %33
  br label %90

90:                                               ; preds = %89
  %91 = load i8*, i8** %9, align 8
  %92 = getelementptr inbounds i8, i8* %91, i32 1
  store i8* %92, i8** %9, align 8
  br label %25

93:                                               ; preds = %25
  %94 = load i32, i32* %14, align 4
  store i32 %94, i32* %7, align 4
  br label %95

95:                                               ; preds = %93, %20
  %96 = load i32, i32* %7, align 4
  ret i32 %96
}

declare dso_local i32 @info_tailcall(%struct.TYPE_10__*) #1

declare dso_local i32 @funcinfo(%struct.TYPE_10__*, %struct.TYPE_11__*, i8*) #1

declare dso_local i32 @currentline(i32*, i32*) #1

declare dso_local i8* @getfuncname(i32*, i32*, i32**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
