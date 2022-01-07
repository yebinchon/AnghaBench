; ModuleID = '/home/carl/AnghaBench/postgres/contrib/hstore/extr_hstore_compat.c_hstoreValidOldFormat.c'
source_filename = "/home/carl/AnghaBench/postgres/contrib/hstore/extr_hstore_compat.c_hstoreValidOldFormat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.TYPE_7__ = type { i32, i64, i64, i64 }

@HS_FLAG_NEWVERSION = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"old hstore format is not upward-compatible\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*)* @hstoreValidOldFormat to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hstoreValidOldFormat(%struct.TYPE_6__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %3, align 8
  %9 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  store i32 %11, i32* %4, align 4
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %13 = call i64 @ARRPTR(%struct.TYPE_6__* %12)
  %14 = inttoptr i64 %13 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %14, %struct.TYPE_7__** %5, align 8
  store i32 0, i32* %7, align 4
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @HS_FLAG_NEWVERSION, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %133

22:                                               ; preds = %1
  %23 = call i32 @StaticAssertStmt(i32 0, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0))
  %24 = load i32, i32* %4, align 4
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %22
  store i32 2, i32* %2, align 4
  br label %133

27:                                               ; preds = %22
  %28 = load i32, i32* %4, align 4
  %29 = icmp sgt i32 %28, 268435455
  br i1 %29, label %30, label %31

30:                                               ; preds = %27
  store i32 0, i32* %2, align 4
  br label %133

31:                                               ; preds = %27
  %32 = load i32, i32* %4, align 4
  %33 = call i32 @CALCDATASIZE(i32 %32, i32 0)
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %35 = call i32 @VARSIZE(%struct.TYPE_6__* %34)
  %36 = icmp sgt i32 %33, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %31
  store i32 0, i32* %2, align 4
  br label %133

38:                                               ; preds = %31
  %39 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i64 0
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %38
  store i32 0, i32* %2, align 4
  br label %133

45:                                               ; preds = %38
  store i32 1, i32* %8, align 4
  br label %46

46:                                               ; preds = %67, %45
  %47 = load i32, i32* %8, align 4
  %48 = load i32, i32* %4, align 4
  %49 = icmp slt i32 %47, %48
  br i1 %49, label %50, label %70

50:                                               ; preds = %46
  %51 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %52 = load i32, i32* %8, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i64 %53
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %58 = load i32, i32* %8, align 4
  %59 = sub nsw i32 %58, 1
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %57, i64 %60
  %62 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = icmp slt i64 %56, %63
  br i1 %64, label %65, label %66

65:                                               ; preds = %50
  store i32 0, i32* %2, align 4
  br label %133

66:                                               ; preds = %50
  br label %67

67:                                               ; preds = %66
  %68 = load i32, i32* %8, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %8, align 4
  br label %46

70:                                               ; preds = %46
  store i32 0, i32* %8, align 4
  br label %71

71:                                               ; preds = %114, %70
  %72 = load i32, i32* %8, align 4
  %73 = load i32, i32* %4, align 4
  %74 = icmp slt i32 %72, %73
  br i1 %74, label %75, label %117

75:                                               ; preds = %71
  %76 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %77 = load i32, i32* %8, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %76, i64 %78
  %80 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = load i32, i32* %7, align 4
  %83 = icmp ne i32 %81, %82
  br i1 %83, label %84, label %85

84:                                               ; preds = %75
  store i32 0, i32* %2, align 4
  br label %133

85:                                               ; preds = %75
  %86 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %87 = load i32, i32* %8, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %86, i64 %88
  %90 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %89, i32 0, i32 1
  %91 = load i64, i64* %90, align 8
  %92 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %93 = load i32, i32* %8, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %92, i64 %94
  %96 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %95, i32 0, i32 3
  %97 = load i64, i64* %96, align 8
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %100

99:                                               ; preds = %85
  br label %107

100:                                              ; preds = %85
  %101 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %102 = load i32, i32* %8, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %101, i64 %103
  %105 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %104, i32 0, i32 2
  %106 = load i64, i64* %105, align 8
  br label %107

107:                                              ; preds = %100, %99
  %108 = phi i64 [ 0, %99 ], [ %106, %100 ]
  %109 = add nsw i64 %91, %108
  %110 = load i32, i32* %7, align 4
  %111 = sext i32 %110 to i64
  %112 = add nsw i64 %111, %109
  %113 = trunc i64 %112 to i32
  store i32 %113, i32* %7, align 4
  br label %114

114:                                              ; preds = %107
  %115 = load i32, i32* %8, align 4
  %116 = add nsw i32 %115, 1
  store i32 %116, i32* %8, align 4
  br label %71

117:                                              ; preds = %71
  %118 = load i32, i32* %4, align 4
  %119 = load i32, i32* %7, align 4
  %120 = call i32 @CALCDATASIZE(i32 %118, i32 %119)
  store i32 %120, i32* %6, align 4
  %121 = load i32, i32* %6, align 4
  %122 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %123 = call i32 @VARSIZE(%struct.TYPE_6__* %122)
  %124 = icmp sgt i32 %121, %123
  br i1 %124, label %125, label %126

125:                                              ; preds = %117
  store i32 0, i32* %2, align 4
  br label %133

126:                                              ; preds = %117
  %127 = load i32, i32* %6, align 4
  %128 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %129 = call i32 @VARSIZE(%struct.TYPE_6__* %128)
  %130 = icmp ne i32 %127, %129
  br i1 %130, label %131, label %132

131:                                              ; preds = %126
  store i32 1, i32* %2, align 4
  br label %133

132:                                              ; preds = %126
  store i32 2, i32* %2, align 4
  br label %133

133:                                              ; preds = %132, %131, %125, %84, %65, %44, %37, %30, %26, %21
  %134 = load i32, i32* %2, align 4
  ret i32 %134
}

declare dso_local i64 @ARRPTR(%struct.TYPE_6__*) #1

declare dso_local i32 @StaticAssertStmt(i32, i8*) #1

declare dso_local i32 @CALCDATASIZE(i32, i32) #1

declare dso_local i32 @VARSIZE(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
