; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_tsvector_op.c_add_pos.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_tsvector_op.c_add_pos.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }
%struct.TYPE_9__ = type { i32 }

@MAXNUMPOS = common dso_local global i32 0, align 4
@MAXENTRYPOS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.TYPE_8__*, i32, %struct.TYPE_8__*, i32)* @add_pos to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @add_pos(i32 %0, %struct.TYPE_8__* %1, i32 %2, %struct.TYPE_8__* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_8__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_8__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  store i32 %0, i32* %6, align 4
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.TYPE_8__* %3, %struct.TYPE_8__** %9, align 8
  store i32 %4, i32* %10, align 4
  %17 = load i32, i32* %8, align 4
  %18 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %19 = call %struct.TYPE_9__* @_POSVECPTR(i32 %17, %struct.TYPE_8__* %18)
  %20 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %19, i32 0, i32 0
  store i32* %20, i32** %11, align 8
  %21 = load i32, i32* %6, align 4
  %22 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %23 = call i32 @POSDATALEN(i32 %21, %struct.TYPE_8__* %22)
  store i32 %23, i32* %13, align 4
  %24 = load i32, i32* %6, align 4
  %25 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %26 = call i32* @POSDATAPTR(i32 %24, %struct.TYPE_8__* %25)
  store i32* %26, i32** %15, align 8
  %27 = load i32, i32* %8, align 4
  %28 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %29 = call i32* @POSDATAPTR(i32 %27, %struct.TYPE_8__* %28)
  store i32* %29, i32** %16, align 8
  %30 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %36, label %34

34:                                               ; preds = %5
  %35 = load i32*, i32** %11, align 8
  store i32 0, i32* %35, align 4
  br label %36

36:                                               ; preds = %34, %5
  %37 = load i32*, i32** %11, align 8
  %38 = load i32, i32* %37, align 4
  store i32 %38, i32* %14, align 4
  store i32 0, i32* %12, align 4
  br label %39

39:                                               ; preds = %101, %36
  %40 = load i32, i32* %12, align 4
  %41 = load i32, i32* %13, align 4
  %42 = icmp slt i32 %40, %41
  br i1 %42, label %43, label %66

43:                                               ; preds = %39
  %44 = load i32*, i32** %11, align 8
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @MAXNUMPOS, align 4
  %47 = icmp slt i32 %45, %46
  br i1 %47, label %48, label %66

48:                                               ; preds = %43
  %49 = load i32*, i32** %11, align 8
  %50 = load i32, i32* %49, align 4
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %64, label %52

52:                                               ; preds = %48
  %53 = load i32*, i32** %16, align 8
  %54 = load i32*, i32** %11, align 8
  %55 = load i32, i32* %54, align 4
  %56 = sub nsw i32 %55, 1
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i32, i32* %53, i64 %57
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @WEP_GETPOS(i32 %59)
  %61 = load i32, i32* @MAXENTRYPOS, align 4
  %62 = sub nsw i32 %61, 1
  %63 = icmp ne i32 %60, %62
  br label %64

64:                                               ; preds = %52, %48
  %65 = phi i1 [ true, %48 ], [ %63, %52 ]
  br label %66

66:                                               ; preds = %64, %43, %39
  %67 = phi i1 [ false, %43 ], [ false, %39 ], [ %65, %64 ]
  br i1 %67, label %68, label %104

68:                                               ; preds = %66
  %69 = load i32*, i32** %16, align 8
  %70 = load i32*, i32** %11, align 8
  %71 = load i32, i32* %70, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i32, i32* %69, i64 %72
  %74 = load i32, i32* %73, align 4
  %75 = load i32*, i32** %15, align 8
  %76 = load i32, i32* %12, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i32, i32* %75, i64 %77
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @WEP_GETWEIGHT(i32 %79)
  %81 = call i32 @WEP_SETWEIGHT(i32 %74, i32 %80)
  %82 = load i32*, i32** %16, align 8
  %83 = load i32*, i32** %11, align 8
  %84 = load i32, i32* %83, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i32, i32* %82, i64 %85
  %87 = load i32, i32* %86, align 4
  %88 = load i32*, i32** %15, align 8
  %89 = load i32, i32* %12, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i32, i32* %88, i64 %90
  %92 = load i32, i32* %91, align 4
  %93 = call i32 @WEP_GETPOS(i32 %92)
  %94 = load i32, i32* %10, align 4
  %95 = add nsw i32 %93, %94
  %96 = call i32 @LIMITPOS(i32 %95)
  %97 = call i32 @WEP_SETPOS(i32 %87, i32 %96)
  %98 = load i32*, i32** %11, align 8
  %99 = load i32, i32* %98, align 4
  %100 = add nsw i32 %99, 1
  store i32 %100, i32* %98, align 4
  br label %101

101:                                              ; preds = %68
  %102 = load i32, i32* %12, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %12, align 4
  br label %39

104:                                              ; preds = %66
  %105 = load i32*, i32** %11, align 8
  %106 = load i32, i32* %105, align 4
  %107 = load i32, i32* %14, align 4
  %108 = icmp ne i32 %106, %107
  br i1 %108, label %109, label %112

109:                                              ; preds = %104
  %110 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %111 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %110, i32 0, i32 0
  store i32 1, i32* %111, align 4
  br label %112

112:                                              ; preds = %109, %104
  %113 = load i32*, i32** %11, align 8
  %114 = load i32, i32* %113, align 4
  %115 = load i32, i32* %14, align 4
  %116 = sub nsw i32 %114, %115
  ret i32 %116
}

declare dso_local %struct.TYPE_9__* @_POSVECPTR(i32, %struct.TYPE_8__*) #1

declare dso_local i32 @POSDATALEN(i32, %struct.TYPE_8__*) #1

declare dso_local i32* @POSDATAPTR(i32, %struct.TYPE_8__*) #1

declare dso_local i32 @WEP_GETPOS(i32) #1

declare dso_local i32 @WEP_SETWEIGHT(i32, i32) #1

declare dso_local i32 @WEP_GETWEIGHT(i32) #1

declare dso_local i32 @WEP_SETPOS(i32, i32) #1

declare dso_local i32 @LIMITPOS(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
