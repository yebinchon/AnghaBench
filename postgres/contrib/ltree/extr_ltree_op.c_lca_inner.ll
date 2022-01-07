; ModuleID = '/home/carl/AnghaBench/postgres/contrib/ltree/extr_ltree_op.c_lca_inner.c'
source_filename = "/home/carl/AnghaBench/postgres/contrib/ltree/extr_ltree_op.c_lca_inner.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32 }
%struct.TYPE_12__ = type { i64, i32 }

@LTREE_HDRSIZE = common dso_local global i32 0, align 4
@LEVEL_HDRSIZE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_13__* @lca_inner(%struct.TYPE_13__** %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_13__*, align 8
  %4 = alloca %struct.TYPE_13__**, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_13__**, align 8
  %11 = alloca %struct.TYPE_12__*, align 8
  %12 = alloca %struct.TYPE_12__*, align 8
  %13 = alloca %struct.TYPE_13__*, align 8
  store %struct.TYPE_13__** %0, %struct.TYPE_13__*** %4, align 8
  store i32 %1, i32* %5, align 4
  %14 = load i32, i32* %5, align 4
  %15 = icmp sle i32 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %2
  store %struct.TYPE_13__* null, %struct.TYPE_13__** %3, align 8
  br label %174

17:                                               ; preds = %2
  %18 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %4, align 8
  %19 = load %struct.TYPE_13__*, %struct.TYPE_13__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %17
  store %struct.TYPE_13__* null, %struct.TYPE_13__** %3, align 8
  br label %174

24:                                               ; preds = %17
  %25 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %4, align 8
  %26 = load %struct.TYPE_13__*, %struct.TYPE_13__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = sub nsw i32 %28, 1
  store i32 %29, i32* %7, align 4
  %30 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_13__*, %struct.TYPE_13__** %30, i64 1
  store %struct.TYPE_13__** %31, %struct.TYPE_13__*** %10, align 8
  br label %32

32:                                               ; preds = %108, %24
  %33 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %10, align 8
  %34 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %4, align 8
  %35 = ptrtoint %struct.TYPE_13__** %33 to i64
  %36 = ptrtoint %struct.TYPE_13__** %34 to i64
  %37 = sub i64 %35, %36
  %38 = sdiv exact i64 %37, 8
  %39 = load i32, i32* %5, align 4
  %40 = sext i32 %39 to i64
  %41 = icmp slt i64 %38, %40
  br i1 %41, label %42, label %111

42:                                               ; preds = %32
  %43 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %10, align 8
  %44 = load %struct.TYPE_13__*, %struct.TYPE_13__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %42
  store %struct.TYPE_13__* null, %struct.TYPE_13__** %3, align 8
  br label %174

49:                                               ; preds = %42
  %50 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %10, align 8
  %51 = load %struct.TYPE_13__*, %struct.TYPE_13__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = icmp eq i32 %53, 1
  br i1 %54, label %55, label %56

55:                                               ; preds = %49
  store i32 0, i32* %7, align 4
  br label %107

56:                                               ; preds = %49
  %57 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %4, align 8
  %58 = load %struct.TYPE_13__*, %struct.TYPE_13__** %57, align 8
  %59 = call %struct.TYPE_12__* @LTREE_FIRST(%struct.TYPE_13__* %58)
  store %struct.TYPE_12__* %59, %struct.TYPE_12__** %11, align 8
  %60 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %10, align 8
  %61 = load %struct.TYPE_13__*, %struct.TYPE_13__** %60, align 8
  %62 = call %struct.TYPE_12__* @LTREE_FIRST(%struct.TYPE_13__* %61)
  store %struct.TYPE_12__* %62, %struct.TYPE_12__** %12, align 8
  %63 = load i32, i32* %7, align 4
  %64 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %10, align 8
  %65 = load %struct.TYPE_13__*, %struct.TYPE_13__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = sub nsw i32 %67, 1
  %69 = call i32 @Min(i32 %63, i32 %68)
  store i32 %69, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  br label %70

70:                                               ; preds = %103, %56
  %71 = load i32, i32* %8, align 4
  %72 = load i32, i32* %6, align 4
  %73 = icmp slt i32 %71, %72
  br i1 %73, label %74, label %106

74:                                               ; preds = %70
  %75 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %76 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %79 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = icmp eq i64 %77, %80
  br i1 %81, label %82, label %97

82:                                               ; preds = %74
  %83 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %84 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 8
  %86 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %87 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 8
  %89 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %90 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = call i64 @memcmp(i32 %85, i32 %88, i64 %91)
  %93 = icmp eq i64 %92, 0
  br i1 %93, label %94, label %97

94:                                               ; preds = %82
  %95 = load i32, i32* %8, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %7, align 4
  br label %98

97:                                               ; preds = %82, %74
  br label %106

98:                                               ; preds = %94
  %99 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %100 = call %struct.TYPE_12__* @LEVEL_NEXT(%struct.TYPE_12__* %99)
  store %struct.TYPE_12__* %100, %struct.TYPE_12__** %11, align 8
  %101 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %102 = call %struct.TYPE_12__* @LEVEL_NEXT(%struct.TYPE_12__* %101)
  store %struct.TYPE_12__* %102, %struct.TYPE_12__** %12, align 8
  br label %103

103:                                              ; preds = %98
  %104 = load i32, i32* %8, align 4
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* %8, align 4
  br label %70

106:                                              ; preds = %97, %70
  br label %107

107:                                              ; preds = %106, %55
  br label %108

108:                                              ; preds = %107
  %109 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %10, align 8
  %110 = getelementptr inbounds %struct.TYPE_13__*, %struct.TYPE_13__** %109, i32 1
  store %struct.TYPE_13__** %110, %struct.TYPE_13__*** %10, align 8
  br label %32

111:                                              ; preds = %32
  %112 = load i32, i32* @LTREE_HDRSIZE, align 4
  store i32 %112, i32* %9, align 4
  %113 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %4, align 8
  %114 = load %struct.TYPE_13__*, %struct.TYPE_13__** %113, align 8
  %115 = call %struct.TYPE_12__* @LTREE_FIRST(%struct.TYPE_13__* %114)
  store %struct.TYPE_12__* %115, %struct.TYPE_12__** %11, align 8
  store i32 0, i32* %8, align 4
  br label %116

116:                                              ; preds = %133, %111
  %117 = load i32, i32* %8, align 4
  %118 = load i32, i32* %7, align 4
  %119 = icmp slt i32 %117, %118
  br i1 %119, label %120, label %136

120:                                              ; preds = %116
  %121 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %122 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %121, i32 0, i32 0
  %123 = load i64, i64* %122, align 8
  %124 = load i64, i64* @LEVEL_HDRSIZE, align 8
  %125 = add nsw i64 %123, %124
  %126 = call i64 @MAXALIGN(i64 %125)
  %127 = load i32, i32* %9, align 4
  %128 = sext i32 %127 to i64
  %129 = add nsw i64 %128, %126
  %130 = trunc i64 %129 to i32
  store i32 %130, i32* %9, align 4
  %131 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %132 = call %struct.TYPE_12__* @LEVEL_NEXT(%struct.TYPE_12__* %131)
  store %struct.TYPE_12__* %132, %struct.TYPE_12__** %11, align 8
  br label %133

133:                                              ; preds = %120
  %134 = load i32, i32* %8, align 4
  %135 = add nsw i32 %134, 1
  store i32 %135, i32* %8, align 4
  br label %116

136:                                              ; preds = %116
  %137 = load i32, i32* %9, align 4
  %138 = call i64 @palloc0(i32 %137)
  %139 = inttoptr i64 %138 to %struct.TYPE_13__*
  store %struct.TYPE_13__* %139, %struct.TYPE_13__** %13, align 8
  %140 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %141 = load i32, i32* %9, align 4
  %142 = call i32 @SET_VARSIZE(%struct.TYPE_13__* %140, i32 %141)
  %143 = load i32, i32* %7, align 4
  %144 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %145 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %144, i32 0, i32 0
  store i32 %143, i32* %145, align 4
  %146 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %4, align 8
  %147 = load %struct.TYPE_13__*, %struct.TYPE_13__** %146, align 8
  %148 = call %struct.TYPE_12__* @LTREE_FIRST(%struct.TYPE_13__* %147)
  store %struct.TYPE_12__* %148, %struct.TYPE_12__** %11, align 8
  %149 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %150 = call %struct.TYPE_12__* @LTREE_FIRST(%struct.TYPE_13__* %149)
  store %struct.TYPE_12__* %150, %struct.TYPE_12__** %12, align 8
  store i32 0, i32* %8, align 4
  br label %151

151:                                              ; preds = %169, %136
  %152 = load i32, i32* %8, align 4
  %153 = load i32, i32* %7, align 4
  %154 = icmp slt i32 %152, %153
  br i1 %154, label %155, label %172

155:                                              ; preds = %151
  %156 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %157 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %158 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %159 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %158, i32 0, i32 0
  %160 = load i64, i64* %159, align 8
  %161 = load i64, i64* @LEVEL_HDRSIZE, align 8
  %162 = add nsw i64 %160, %161
  %163 = call i64 @MAXALIGN(i64 %162)
  %164 = call i32 @memcpy(%struct.TYPE_12__* %156, %struct.TYPE_12__* %157, i64 %163)
  %165 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %166 = call %struct.TYPE_12__* @LEVEL_NEXT(%struct.TYPE_12__* %165)
  store %struct.TYPE_12__* %166, %struct.TYPE_12__** %11, align 8
  %167 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %168 = call %struct.TYPE_12__* @LEVEL_NEXT(%struct.TYPE_12__* %167)
  store %struct.TYPE_12__* %168, %struct.TYPE_12__** %12, align 8
  br label %169

169:                                              ; preds = %155
  %170 = load i32, i32* %8, align 4
  %171 = add nsw i32 %170, 1
  store i32 %171, i32* %8, align 4
  br label %151

172:                                              ; preds = %151
  %173 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  store %struct.TYPE_13__* %173, %struct.TYPE_13__** %3, align 8
  br label %174

174:                                              ; preds = %172, %48, %23, %16
  %175 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  ret %struct.TYPE_13__* %175
}

declare dso_local %struct.TYPE_12__* @LTREE_FIRST(%struct.TYPE_13__*) #1

declare dso_local i32 @Min(i32, i32) #1

declare dso_local i64 @memcmp(i32, i32, i64) #1

declare dso_local %struct.TYPE_12__* @LEVEL_NEXT(%struct.TYPE_12__*) #1

declare dso_local i64 @MAXALIGN(i64) #1

declare dso_local i64 @palloc0(i32) #1

declare dso_local i32 @SET_VARSIZE(%struct.TYPE_13__*, i32) #1

declare dso_local i32 @memcpy(%struct.TYPE_12__*, %struct.TYPE_12__*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
