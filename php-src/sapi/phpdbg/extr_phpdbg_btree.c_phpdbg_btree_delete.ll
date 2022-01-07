; ModuleID = '/home/carl/AnghaBench/php-src/sapi/phpdbg/extr_phpdbg_btree.c_phpdbg_btree_delete.c'
source_filename = "/home/carl/AnghaBench/php-src/sapi/phpdbg/extr_phpdbg_btree.c_phpdbg_btree_delete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32, %struct.TYPE_7__*, i32 }
%struct.TYPE_7__ = type { %struct.TYPE_7__** }

@FAILURE = common dso_local global i32 0, align 4
@SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @phpdbg_btree_delete(%struct.TYPE_8__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_7__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_7__*, align 8
  %11 = alloca %struct.TYPE_7__*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %4, align 8
  store i32 %1, i32* %5, align 4
  %12 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  store i32 %14, i32* %6, align 4
  %15 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 2
  %17 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  store %struct.TYPE_7__* %17, %struct.TYPE_7__** %7, align 8
  store i32 -1, i32* %8, align 4
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %10, align 8
  br label %51

18:                                               ; No predecessors!
  br label %19

19:                                               ; preds = %57, %18
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 0
  %22 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %22, i64 0
  %24 = load %struct.TYPE_7__*, %struct.TYPE_7__** %23, align 8
  %25 = icmp ne %struct.TYPE_7__* %24, null
  br i1 %25, label %26, label %40

26:                                               ; preds = %19
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 0
  %29 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %29, i64 1
  %31 = load %struct.TYPE_7__*, %struct.TYPE_7__** %30, align 8
  %32 = icmp ne %struct.TYPE_7__* %31, null
  br i1 %32, label %33, label %40

33:                                               ; preds = %26
  %34 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  store %struct.TYPE_7__* %34, %struct.TYPE_7__** %10, align 8
  %35 = load i32, i32* %6, align 4
  store i32 %35, i32* %8, align 4
  %36 = load i32, i32* %5, align 4
  %37 = load i32, i32* %6, align 4
  %38 = ashr i32 %36, %37
  %39 = srem i32 %38, 2
  store i32 %39, i32* %9, align 4
  br label %40

40:                                               ; preds = %33, %26, %19
  %41 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i32 0, i32 0
  %43 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %42, align 8
  %44 = load i32, i32* %5, align 4
  %45 = load i32, i32* %6, align 4
  %46 = ashr i32 %44, %45
  %47 = srem i32 %46, 2
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %43, i64 %48
  %50 = load %struct.TYPE_7__*, %struct.TYPE_7__** %49, align 8
  store %struct.TYPE_7__* %50, %struct.TYPE_7__** %7, align 8
  br label %51

51:                                               ; preds = %40, %2
  %52 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %53 = icmp eq %struct.TYPE_7__* %52, null
  br i1 %53, label %54, label %56

54:                                               ; preds = %51
  %55 = load i32, i32* @FAILURE, align 4
  store i32 %55, i32* %3, align 4
  br label %204

56:                                               ; preds = %51
  br label %57

57:                                               ; preds = %56
  %58 = load i32, i32* %6, align 4
  %59 = add nsw i32 %58, -1
  store i32 %59, i32* %6, align 4
  %60 = icmp ne i32 %58, 0
  br i1 %60, label %19, label %61

61:                                               ; preds = %57
  %62 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %63 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %62, i32 0, i32 3
  %64 = load i32, i32* %63, align 8
  %65 = add nsw i32 %64, -1
  store i32 %65, i32* %63, align 8
  %66 = load i32, i32* %8, align 4
  %67 = icmp eq i32 %66, -1
  br i1 %67, label %68, label %78

68:                                               ; preds = %61
  %69 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %70 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %69, i32 0, i32 2
  %71 = load %struct.TYPE_7__*, %struct.TYPE_7__** %70, align 8
  %72 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %73 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @pefree(%struct.TYPE_7__* %71, i32 %74)
  %76 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %77 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %76, i32 0, i32 2
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %77, align 8
  br label %202

78:                                               ; preds = %61
  %79 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %80 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %79, i32 0, i32 0
  %81 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %80, align 8
  %82 = load i32, i32* %9, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %81, i64 %83
  %85 = load %struct.TYPE_7__*, %struct.TYPE_7__** %84, align 8
  %86 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %87 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %86, i64 1
  %88 = icmp eq %struct.TYPE_7__* %85, %87
  br i1 %88, label %89, label %183

89:                                               ; preds = %78
  %90 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %91 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %90, i32 0, i32 0
  %92 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %91, align 8
  %93 = load i32, i32* %9, align 4
  %94 = icmp ne i32 %93, 0
  %95 = xor i1 %94, true
  %96 = zext i1 %95 to i32
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %92, i64 %97
  %99 = load %struct.TYPE_7__*, %struct.TYPE_7__** %98, align 8
  store %struct.TYPE_7__* %99, %struct.TYPE_7__** %11, align 8
  %100 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %101 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %100, i64 1
  %102 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %103 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %102, i32 0, i32 0
  %104 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %103, align 8
  %105 = load i32, i32* %9, align 4
  %106 = icmp ne i32 %105, 0
  %107 = xor i1 %106, true
  %108 = zext i1 %107 to i32
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %104, i64 %109
  %111 = load %struct.TYPE_7__*, %struct.TYPE_7__** %110, align 8
  %112 = load i32, i32* %8, align 4
  %113 = add nsw i32 %112, 1
  %114 = sext i32 %113 to i64
  %115 = mul i64 %114, 8
  %116 = trunc i64 %115 to i32
  %117 = call i32 @memcpy(%struct.TYPE_7__* %101, %struct.TYPE_7__* %111, i32 %116)
  %118 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %119 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %118, i32 0, i32 0
  %120 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %119, align 8
  %121 = load i32, i32* %9, align 4
  %122 = icmp ne i32 %121, 0
  %123 = xor i1 %122, true
  %124 = zext i1 %123 to i32
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %120, i64 %125
  %127 = load %struct.TYPE_7__*, %struct.TYPE_7__** %126, align 8
  %128 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %129 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %128, i32 0, i32 1
  %130 = load i32, i32* %129, align 4
  %131 = call i32 @pefree(%struct.TYPE_7__* %127, i32 %130)
  %132 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %133 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %132, i64 1
  %134 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %135 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %134, i32 0, i32 0
  %136 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %135, align 8
  %137 = load i32, i32* %9, align 4
  %138 = icmp ne i32 %137, 0
  %139 = xor i1 %138, true
  %140 = zext i1 %139 to i32
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %136, i64 %141
  store %struct.TYPE_7__* %133, %struct.TYPE_7__** %142, align 8
  %143 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %144 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %143, i32 0, i32 0
  %145 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %144, align 8
  %146 = load i32, i32* %9, align 4
  %147 = icmp ne i32 %146, 0
  %148 = xor i1 %147, true
  %149 = zext i1 %148 to i32
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %145, i64 %150
  %152 = load %struct.TYPE_7__*, %struct.TYPE_7__** %151, align 8
  store %struct.TYPE_7__* %152, %struct.TYPE_7__** %7, align 8
  %153 = load i32, i32* %8, align 4
  store i32 %153, i32* %6, align 4
  br label %154

154:                                              ; preds = %158, %89
  %155 = load i32, i32* %6, align 4
  %156 = add nsw i32 %155, -1
  store i32 %156, i32* %6, align 4
  %157 = icmp ne i32 %155, 0
  br i1 %157, label %158, label %182

158:                                              ; preds = %154
  %159 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %160 = load i32, i32* %8, align 4
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %159, i64 %161
  %163 = load i32, i32* %6, align 4
  %164 = sext i32 %163 to i64
  %165 = sub i64 0, %164
  %166 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %162, i64 %165
  %167 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %166, i64 1
  %168 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %169 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %168, i32 0, i32 0
  %170 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %169, align 8
  %171 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %172 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %171, i32 0, i32 0
  %173 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %172, align 8
  %174 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %173, i64 1
  %175 = load %struct.TYPE_7__*, %struct.TYPE_7__** %174, align 8
  %176 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %177 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %176, i32 1
  store %struct.TYPE_7__* %177, %struct.TYPE_7__** %11, align 8
  %178 = icmp eq %struct.TYPE_7__* %175, %177
  %179 = zext i1 %178 to i32
  %180 = sext i32 %179 to i64
  %181 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %170, i64 %180
  store %struct.TYPE_7__* %167, %struct.TYPE_7__** %181, align 8
  store %struct.TYPE_7__* %167, %struct.TYPE_7__** %7, align 8
  br label %154

182:                                              ; preds = %154
  br label %195

183:                                              ; preds = %78
  %184 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %185 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %184, i32 0, i32 0
  %186 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %185, align 8
  %187 = load i32, i32* %9, align 4
  %188 = sext i32 %187 to i64
  %189 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %186, i64 %188
  %190 = load %struct.TYPE_7__*, %struct.TYPE_7__** %189, align 8
  %191 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %192 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %191, i32 0, i32 1
  %193 = load i32, i32* %192, align 4
  %194 = call i32 @pefree(%struct.TYPE_7__* %190, i32 %193)
  br label %195

195:                                              ; preds = %183, %182
  %196 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %197 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %196, i32 0, i32 0
  %198 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %197, align 8
  %199 = load i32, i32* %9, align 4
  %200 = sext i32 %199 to i64
  %201 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %198, i64 %200
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %201, align 8
  br label %202

202:                                              ; preds = %195, %68
  %203 = load i32, i32* @SUCCESS, align 4
  store i32 %203, i32* %3, align 4
  br label %204

204:                                              ; preds = %202, %54
  %205 = load i32, i32* %3, align 4
  ret i32 %205
}

declare dso_local i32 @pefree(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @memcpy(%struct.TYPE_7__*, %struct.TYPE_7__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
