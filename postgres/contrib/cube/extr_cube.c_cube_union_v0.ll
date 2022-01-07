; ModuleID = '/home/carl/AnghaBench/postgres/contrib/cube/extr_cube.c_cube_union_v0.c'
source_filename = "/home/carl/AnghaBench/postgres/contrib/cube/extr_cube.c_cube_union_v0.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i8** }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_13__* @cube_union_v0(%struct.TYPE_13__* %0, %struct.TYPE_13__* %1) #0 {
  %3 = alloca %struct.TYPE_13__*, align 8
  %4 = alloca %struct.TYPE_13__*, align 8
  %5 = alloca %struct.TYPE_13__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_13__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_13__*, align 8
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %4, align 8
  store %struct.TYPE_13__* %1, %struct.TYPE_13__** %5, align 8
  %11 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %12 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %13 = icmp eq %struct.TYPE_13__* %11, %12
  br i1 %13, label %14, label %16

14:                                               ; preds = %2
  %15 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  store %struct.TYPE_13__* %15, %struct.TYPE_13__** %3, align 8
  br label %147

16:                                               ; preds = %2
  %17 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %18 = call i32 @DIM(%struct.TYPE_13__* %17)
  %19 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %20 = call i32 @DIM(%struct.TYPE_13__* %19)
  %21 = icmp slt i32 %18, %20
  br i1 %21, label %22, label %26

22:                                               ; preds = %16
  %23 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  store %struct.TYPE_13__* %23, %struct.TYPE_13__** %10, align 8
  %24 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  store %struct.TYPE_13__* %24, %struct.TYPE_13__** %5, align 8
  %25 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  store %struct.TYPE_13__* %25, %struct.TYPE_13__** %4, align 8
  br label %26

26:                                               ; preds = %22, %16
  %27 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %28 = call i32 @DIM(%struct.TYPE_13__* %27)
  store i32 %28, i32* %8, align 4
  %29 = load i32, i32* %8, align 4
  %30 = call i32 @CUBE_SIZE(i32 %29)
  store i32 %30, i32* %9, align 4
  %31 = load i32, i32* %9, align 4
  %32 = call %struct.TYPE_13__* @palloc0(i32 %31)
  store %struct.TYPE_13__* %32, %struct.TYPE_13__** %7, align 8
  %33 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %34 = load i32, i32* %9, align 4
  %35 = call i32 @SET_VARSIZE(%struct.TYPE_13__* %33, i32 %34)
  %36 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %37 = load i32, i32* %8, align 4
  %38 = call i32 @SET_DIM(%struct.TYPE_13__* %36, i32 %37)
  store i32 0, i32* %6, align 4
  br label %39

39:                                               ; preds = %90, %26
  %40 = load i32, i32* %6, align 4
  %41 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %42 = call i32 @DIM(%struct.TYPE_13__* %41)
  %43 = icmp slt i32 %40, %42
  br i1 %43, label %44, label %93

44:                                               ; preds = %39
  %45 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %46 = load i32, i32* %6, align 4
  %47 = call i8* @LL_COORD(%struct.TYPE_13__* %45, i32 %46)
  %48 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %49 = load i32, i32* %6, align 4
  %50 = call i8* @UR_COORD(%struct.TYPE_13__* %48, i32 %49)
  %51 = call i8* @Min(i8* %47, i8* %50)
  %52 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %53 = load i32, i32* %6, align 4
  %54 = call i8* @LL_COORD(%struct.TYPE_13__* %52, i32 %53)
  %55 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %56 = load i32, i32* %6, align 4
  %57 = call i8* @UR_COORD(%struct.TYPE_13__* %55, i32 %56)
  %58 = call i8* @Min(i8* %54, i8* %57)
  %59 = call i8* @Min(i8* %51, i8* %58)
  %60 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %61 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %60, i32 0, i32 0
  %62 = load i8**, i8*** %61, align 8
  %63 = load i32, i32* %6, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i8*, i8** %62, i64 %64
  store i8* %59, i8** %65, align 8
  %66 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %67 = load i32, i32* %6, align 4
  %68 = call i8* @LL_COORD(%struct.TYPE_13__* %66, i32 %67)
  %69 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %70 = load i32, i32* %6, align 4
  %71 = call i8* @UR_COORD(%struct.TYPE_13__* %69, i32 %70)
  %72 = call i8* @Max(i8* %68, i8* %71)
  %73 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %74 = load i32, i32* %6, align 4
  %75 = call i8* @LL_COORD(%struct.TYPE_13__* %73, i32 %74)
  %76 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %77 = load i32, i32* %6, align 4
  %78 = call i8* @UR_COORD(%struct.TYPE_13__* %76, i32 %77)
  %79 = call i8* @Max(i8* %75, i8* %78)
  %80 = call i8* @Max(i8* %72, i8* %79)
  %81 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %82 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %81, i32 0, i32 0
  %83 = load i8**, i8*** %82, align 8
  %84 = load i32, i32* %6, align 4
  %85 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %86 = call i32 @DIM(%struct.TYPE_13__* %85)
  %87 = add nsw i32 %84, %86
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i8*, i8** %83, i64 %88
  store i8* %80, i8** %89, align 8
  br label %90

90:                                               ; preds = %44
  %91 = load i32, i32* %6, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %6, align 4
  br label %39

93:                                               ; preds = %39
  br label %94

94:                                               ; preds = %130, %93
  %95 = load i32, i32* %6, align 4
  %96 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %97 = call i32 @DIM(%struct.TYPE_13__* %96)
  %98 = icmp slt i32 %95, %97
  br i1 %98, label %99, label %133

99:                                               ; preds = %94
  %100 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %101 = load i32, i32* %6, align 4
  %102 = call i8* @LL_COORD(%struct.TYPE_13__* %100, i32 %101)
  %103 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %104 = load i32, i32* %6, align 4
  %105 = call i8* @UR_COORD(%struct.TYPE_13__* %103, i32 %104)
  %106 = call i8* @Min(i8* %102, i8* %105)
  %107 = call i8* @Min(i8* null, i8* %106)
  %108 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %109 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %108, i32 0, i32 0
  %110 = load i8**, i8*** %109, align 8
  %111 = load i32, i32* %6, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds i8*, i8** %110, i64 %112
  store i8* %107, i8** %113, align 8
  %114 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %115 = load i32, i32* %6, align 4
  %116 = call i8* @LL_COORD(%struct.TYPE_13__* %114, i32 %115)
  %117 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %118 = load i32, i32* %6, align 4
  %119 = call i8* @UR_COORD(%struct.TYPE_13__* %117, i32 %118)
  %120 = call i8* @Max(i8* %116, i8* %119)
  %121 = call i8* @Max(i8* null, i8* %120)
  %122 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %123 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %122, i32 0, i32 0
  %124 = load i8**, i8*** %123, align 8
  %125 = load i32, i32* %6, align 4
  %126 = load i32, i32* %8, align 4
  %127 = add nsw i32 %125, %126
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds i8*, i8** %124, i64 %128
  store i8* %121, i8** %129, align 8
  br label %130

130:                                              ; preds = %99
  %131 = load i32, i32* %6, align 4
  %132 = add nsw i32 %131, 1
  store i32 %132, i32* %6, align 4
  br label %94

133:                                              ; preds = %94
  %134 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %135 = call i64 @cube_is_point_internal(%struct.TYPE_13__* %134)
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %137, label %145

137:                                              ; preds = %133
  %138 = load i32, i32* %8, align 4
  %139 = call i32 @POINT_SIZE(i32 %138)
  store i32 %139, i32* %9, align 4
  %140 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %141 = load i32, i32* %9, align 4
  %142 = call i32 @SET_VARSIZE(%struct.TYPE_13__* %140, i32 %141)
  %143 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %144 = call i32 @SET_POINT_BIT(%struct.TYPE_13__* %143)
  br label %145

145:                                              ; preds = %137, %133
  %146 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  store %struct.TYPE_13__* %146, %struct.TYPE_13__** %3, align 8
  br label %147

147:                                              ; preds = %145, %14
  %148 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  ret %struct.TYPE_13__* %148
}

declare dso_local i32 @DIM(%struct.TYPE_13__*) #1

declare dso_local i32 @CUBE_SIZE(i32) #1

declare dso_local %struct.TYPE_13__* @palloc0(i32) #1

declare dso_local i32 @SET_VARSIZE(%struct.TYPE_13__*, i32) #1

declare dso_local i32 @SET_DIM(%struct.TYPE_13__*, i32) #1

declare dso_local i8* @Min(i8*, i8*) #1

declare dso_local i8* @LL_COORD(%struct.TYPE_13__*, i32) #1

declare dso_local i8* @UR_COORD(%struct.TYPE_13__*, i32) #1

declare dso_local i8* @Max(i8*, i8*) #1

declare dso_local i64 @cube_is_point_internal(%struct.TYPE_13__*) #1

declare dso_local i32 @POINT_SIZE(i32) #1

declare dso_local i32 @SET_POINT_BIT(%struct.TYPE_13__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
