; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/access/nbtree/extr_nbtsplitloc.c__bt_interval_edges.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/access/nbtree/extr_nbtsplitloc.c__bt_interval_edges.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64, %struct.TYPE_6__*, i32, i32 }
%struct.TYPE_6__ = type { i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_7__*, %struct.TYPE_6__**, %struct.TYPE_6__**)* @_bt_interval_edges to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_bt_interval_edges(%struct.TYPE_7__* %0, %struct.TYPE_6__** %1, %struct.TYPE_6__** %2) #0 {
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca %struct.TYPE_6__**, align 8
  %6 = alloca %struct.TYPE_6__**, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_6__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_6__*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %4, align 8
  store %struct.TYPE_6__** %1, %struct.TYPE_6__*** %5, align 8
  store %struct.TYPE_6__** %2, %struct.TYPE_6__*** %6, align 8
  %11 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 3
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 8
  %17 = call i32 @Min(i32 %13, i32 %16)
  store i32 %17, i32* %7, align 4
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 1
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %19, align 8
  store %struct.TYPE_6__* %20, %struct.TYPE_6__** %8, align 8
  %21 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %5, align 8
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %21, align 8
  %22 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %6, align 8
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %22, align 8
  %23 = load i32, i32* %7, align 4
  %24 = sub nsw i32 %23, 1
  store i32 %24, i32* %9, align 4
  br label %25

25:                                               ; preds = %153, %3
  %26 = load i32, i32* %9, align 4
  %27 = icmp sge i32 %26, 0
  br i1 %27, label %28, label %156

28:                                               ; preds = %25
  %29 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 1
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %30, align 8
  %32 = load i32, i32* %9, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i64 %33
  store %struct.TYPE_6__* %34, %struct.TYPE_6__** %10, align 8
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = icmp slt i64 %37, %40
  br i1 %41, label %42, label %50

42:                                               ; preds = %28
  %43 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %5, align 8
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** %43, align 8
  %45 = icmp eq %struct.TYPE_6__* %44, null
  br i1 %45, label %46, label %49

46:                                               ; preds = %42
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %48 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %5, align 8
  store %struct.TYPE_6__* %47, %struct.TYPE_6__** %48, align 8
  br label %49

49:                                               ; preds = %46, %42
  br label %143

50:                                               ; preds = %28
  %51 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = icmp sgt i64 %53, %56
  br i1 %57, label %58, label %66

58:                                               ; preds = %50
  %59 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %6, align 8
  %60 = load %struct.TYPE_6__*, %struct.TYPE_6__** %59, align 8
  %61 = icmp eq %struct.TYPE_6__* %60, null
  br i1 %61, label %62, label %65

62:                                               ; preds = %58
  %63 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %64 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %6, align 8
  store %struct.TYPE_6__* %63, %struct.TYPE_6__** %64, align 8
  br label %65

65:                                               ; preds = %62, %58
  br label %142

66:                                               ; preds = %50
  %67 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %93, label %71

71:                                               ; preds = %66
  %72 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 1
  %74 = load i64, i64* %73, align 8
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %93

76:                                               ; preds = %71
  %77 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %78 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %81 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = icmp eq i64 %79, %82
  %84 = zext i1 %83 to i32
  %85 = call i32 @Assert(i32 %84)
  %86 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %5, align 8
  %87 = load %struct.TYPE_6__*, %struct.TYPE_6__** %86, align 8
  %88 = icmp eq %struct.TYPE_6__* %87, null
  br i1 %88, label %89, label %92

89:                                               ; preds = %76
  %90 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %91 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %5, align 8
  store %struct.TYPE_6__* %90, %struct.TYPE_6__** %91, align 8
  br label %92

92:                                               ; preds = %89, %76
  br label %141

93:                                               ; preds = %71, %66
  %94 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %95 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %94, i32 0, i32 1
  %96 = load i64, i64* %95, align 8
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %120

98:                                               ; preds = %93
  %99 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %100 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %99, i32 0, i32 1
  %101 = load i64, i64* %100, align 8
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %120, label %103

103:                                              ; preds = %98
  %104 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %105 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %104, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  %107 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %108 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %107, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = icmp eq i64 %106, %109
  %111 = zext i1 %110 to i32
  %112 = call i32 @Assert(i32 %111)
  %113 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %6, align 8
  %114 = load %struct.TYPE_6__*, %struct.TYPE_6__** %113, align 8
  %115 = icmp eq %struct.TYPE_6__* %114, null
  br i1 %115, label %116, label %119

116:                                              ; preds = %103
  %117 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %118 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %6, align 8
  store %struct.TYPE_6__* %117, %struct.TYPE_6__** %118, align 8
  br label %119

119:                                              ; preds = %116, %103
  br label %140

120:                                              ; preds = %98, %93
  %121 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %122 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %123 = icmp eq %struct.TYPE_6__* %121, %122
  %124 = zext i1 %123 to i32
  %125 = call i32 @Assert(i32 %124)
  %126 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %5, align 8
  %127 = load %struct.TYPE_6__*, %struct.TYPE_6__** %126, align 8
  %128 = icmp eq %struct.TYPE_6__* %127, null
  br i1 %128, label %129, label %132

129:                                              ; preds = %120
  %130 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %131 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %5, align 8
  store %struct.TYPE_6__* %130, %struct.TYPE_6__** %131, align 8
  br label %132

132:                                              ; preds = %129, %120
  %133 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %6, align 8
  %134 = load %struct.TYPE_6__*, %struct.TYPE_6__** %133, align 8
  %135 = icmp eq %struct.TYPE_6__* %134, null
  br i1 %135, label %136, label %139

136:                                              ; preds = %132
  %137 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %138 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %6, align 8
  store %struct.TYPE_6__* %137, %struct.TYPE_6__** %138, align 8
  br label %139

139:                                              ; preds = %136, %132
  br label %140

140:                                              ; preds = %139, %119
  br label %141

141:                                              ; preds = %140, %92
  br label %142

142:                                              ; preds = %141, %65
  br label %143

143:                                              ; preds = %142, %49
  %144 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %5, align 8
  %145 = load %struct.TYPE_6__*, %struct.TYPE_6__** %144, align 8
  %146 = icmp ne %struct.TYPE_6__* %145, null
  br i1 %146, label %147, label %152

147:                                              ; preds = %143
  %148 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %6, align 8
  %149 = load %struct.TYPE_6__*, %struct.TYPE_6__** %148, align 8
  %150 = icmp ne %struct.TYPE_6__* %149, null
  br i1 %150, label %151, label %152

151:                                              ; preds = %147
  br label %158

152:                                              ; preds = %147, %143
  br label %153

153:                                              ; preds = %152
  %154 = load i32, i32* %9, align 4
  %155 = add nsw i32 %154, -1
  store i32 %155, i32* %9, align 4
  br label %25

156:                                              ; preds = %25
  %157 = call i32 @Assert(i32 0)
  br label %158

158:                                              ; preds = %156, %151
  ret void
}

declare dso_local i32 @Min(i32, i32) #1

declare dso_local i32 @Assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
