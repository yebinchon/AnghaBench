; ModuleID = '/home/carl/AnghaBench/micropython/lib/littlefs/extr_lfs1.c_lfs1_traverse.c'
source_filename = "/home/carl/AnghaBench/micropython/lib/littlefs/extr_lfs1.c_lfs1_traverse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { i32*, i32, %struct.TYPE_21__* }
%struct.TYPE_21__ = type { i32, i32, i32, i32, i32, i32, %struct.TYPE_21__* }
%struct.TYPE_23__ = type { i32, %struct.TYPE_19__, i32* }
%struct.TYPE_19__ = type { i32, i32* }
%struct.TYPE_22__ = type { %struct.TYPE_16__ }
%struct.TYPE_16__ = type { i32, %struct.TYPE_18__ }
%struct.TYPE_18__ = type { %struct.TYPE_17__ }
%struct.TYPE_17__ = type { i32, i32 }

@__const.lfs1_traverse.cwd = private unnamed_addr constant [2 x i32] [i32 0, i32 1], align 4
@LFS1_TYPE_REG = common dso_local global i32 0, align 4
@LFS1_F_DIRTY = common dso_local global i32 0, align 4
@LFS1_F_WRITING = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @lfs1_traverse(%struct.TYPE_20__* %0, i32 (i8*, i32)* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_20__*, align 8
  %6 = alloca i32 (i8*, i32)*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.TYPE_23__, align 8
  %9 = alloca %struct.TYPE_22__, align 4
  %10 = alloca [2 x i32], align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_21__*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.TYPE_20__* %0, %struct.TYPE_20__** %5, align 8
  store i32 (i8*, i32)* %1, i32 (i8*, i32)** %6, align 8
  store i8* %2, i8** %7, align 8
  %17 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %17, i32 0, i32 0
  %19 = load i32*, i32** %18, align 8
  %20 = call i64 @lfs1_pairisnull(i32* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %204

23:                                               ; preds = %3
  %24 = bitcast [2 x i32]* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %24, i8* align 4 bitcast ([2 x i32]* @__const.lfs1_traverse.cwd to i8*), i64 8, i1 false)
  br label %25

25:                                               ; preds = %23, %136
  store i32 0, i32* %11, align 4
  br label %26

26:                                               ; preds = %42, %25
  %27 = load i32, i32* %11, align 4
  %28 = icmp slt i32 %27, 2
  br i1 %28, label %29, label %45

29:                                               ; preds = %26
  %30 = load i32 (i8*, i32)*, i32 (i8*, i32)** %6, align 8
  %31 = load i8*, i8** %7, align 8
  %32 = load i32, i32* %11, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 %33
  %35 = load i32, i32* %34, align 4
  %36 = call i32 %30(i8* %31, i32 %35)
  store i32 %36, i32* %12, align 4
  %37 = load i32, i32* %12, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %29
  %40 = load i32, i32* %12, align 4
  store i32 %40, i32* %4, align 4
  br label %204

41:                                               ; preds = %29
  br label %42

42:                                               ; preds = %41
  %43 = load i32, i32* %11, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %11, align 4
  br label %26

45:                                               ; preds = %26
  %46 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %47 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 0
  %48 = call i32 @lfs1_dir_fetch(%struct.TYPE_20__* %46, %struct.TYPE_23__* %8, i32* %47)
  store i32 %48, i32* %13, align 4
  %49 = load i32, i32* %13, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %45
  %52 = load i32, i32* %13, align 4
  store i32 %52, i32* %4, align 4
  br label %204

53:                                               ; preds = %45
  br label %54

54:                                               ; preds = %118, %53
  %55 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %8, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = sext i32 %56 to i64
  %58 = add i64 %57, 12
  %59 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %8, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = and i32 2147483647, %61
  %63 = sub nsw i32 %62, 4
  %64 = sext i32 %63 to i64
  %65 = icmp ule i64 %58, %64
  br i1 %65, label %66, label %119

66:                                               ; preds = %54
  %67 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %68 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %8, i32 0, i32 2
  %69 = load i32*, i32** %68, align 8
  %70 = getelementptr inbounds i32, i32* %69, i64 0
  %71 = load i32, i32* %70, align 4
  %72 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %8, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %9, i32 0, i32 0
  %75 = call i32 @lfs1_bd_read(%struct.TYPE_20__* %67, i32 %71, i32 %73, %struct.TYPE_16__* %74, i32 12)
  store i32 %75, i32* %13, align 4
  %76 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %9, i32 0, i32 0
  %77 = call i32 @lfs1_entry_fromle32(%struct.TYPE_16__* %76)
  %78 = load i32, i32* %13, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %82

80:                                               ; preds = %66
  %81 = load i32, i32* %13, align 4
  store i32 %81, i32* %4, align 4
  br label %204

82:                                               ; preds = %66
  %83 = call i64 @lfs1_entry_size(%struct.TYPE_22__* %9)
  %84 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %8, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = sext i32 %85 to i64
  %87 = add nsw i64 %86, %83
  %88 = trunc i64 %87 to i32
  store i32 %88, i32* %84, align 8
  %89 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %9, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = and i32 112, %91
  %93 = load i32, i32* @LFS1_TYPE_REG, align 4
  %94 = and i32 112, %93
  %95 = icmp eq i32 %92, %94
  br i1 %95, label %96, label %118

96:                                               ; preds = %82
  %97 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %98 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %99 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %98, i32 0, i32 1
  %100 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %9, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %100, i32 0, i32 1
  %102 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  %105 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %9, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %105, i32 0, i32 1
  %107 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = load i32 (i8*, i32)*, i32 (i8*, i32)** %6, align 8
  %111 = load i8*, i8** %7, align 8
  %112 = call i32 @lfs1_ctz_traverse(%struct.TYPE_20__* %97, i32* %99, i32* null, i32 %104, i32 %109, i32 (i8*, i32)* %110, i8* %111)
  store i32 %112, i32* %13, align 4
  %113 = load i32, i32* %13, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %117

115:                                              ; preds = %96
  %116 = load i32, i32* %13, align 4
  store i32 %116, i32* %4, align 4
  br label %204

117:                                              ; preds = %96
  br label %118

118:                                              ; preds = %117, %82
  br label %54

119:                                              ; preds = %54
  %120 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %8, i32 0, i32 1
  %121 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %120, i32 0, i32 1
  %122 = load i32*, i32** %121, align 8
  %123 = getelementptr inbounds i32, i32* %122, i64 0
  %124 = load i32, i32* %123, align 4
  %125 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 0
  store i32 %124, i32* %125, align 4
  %126 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %8, i32 0, i32 1
  %127 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %126, i32 0, i32 1
  %128 = load i32*, i32** %127, align 8
  %129 = getelementptr inbounds i32, i32* %128, i64 1
  %130 = load i32, i32* %129, align 4
  %131 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 1
  store i32 %130, i32* %131, align 4
  %132 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 0
  %133 = call i64 @lfs1_pairisnull(i32* %132)
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %135, label %136

135:                                              ; preds = %119
  br label %137

136:                                              ; preds = %119
  br label %25

137:                                              ; preds = %135
  %138 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %139 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %138, i32 0, i32 2
  %140 = load %struct.TYPE_21__*, %struct.TYPE_21__** %139, align 8
  store %struct.TYPE_21__* %140, %struct.TYPE_21__** %14, align 8
  br label %141

141:                                              ; preds = %199, %137
  %142 = load %struct.TYPE_21__*, %struct.TYPE_21__** %14, align 8
  %143 = icmp ne %struct.TYPE_21__* %142, null
  br i1 %143, label %144, label %203

144:                                              ; preds = %141
  %145 = load %struct.TYPE_21__*, %struct.TYPE_21__** %14, align 8
  %146 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 8
  %148 = load i32, i32* @LFS1_F_DIRTY, align 4
  %149 = and i32 %147, %148
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %151, label %171

151:                                              ; preds = %144
  %152 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %153 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %154 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %153, i32 0, i32 1
  %155 = load %struct.TYPE_21__*, %struct.TYPE_21__** %14, align 8
  %156 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %155, i32 0, i32 3
  %157 = load %struct.TYPE_21__*, %struct.TYPE_21__** %14, align 8
  %158 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %157, i32 0, i32 5
  %159 = load i32, i32* %158, align 4
  %160 = load %struct.TYPE_21__*, %struct.TYPE_21__** %14, align 8
  %161 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %160, i32 0, i32 4
  %162 = load i32, i32* %161, align 8
  %163 = load i32 (i8*, i32)*, i32 (i8*, i32)** %6, align 8
  %164 = load i8*, i8** %7, align 8
  %165 = call i32 @lfs1_ctz_traverse(%struct.TYPE_20__* %152, i32* %154, i32* %156, i32 %159, i32 %162, i32 (i8*, i32)* %163, i8* %164)
  store i32 %165, i32* %15, align 4
  %166 = load i32, i32* %15, align 4
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %168, label %170

168:                                              ; preds = %151
  %169 = load i32, i32* %15, align 4
  store i32 %169, i32* %4, align 4
  br label %204

170:                                              ; preds = %151
  br label %171

171:                                              ; preds = %170, %144
  %172 = load %struct.TYPE_21__*, %struct.TYPE_21__** %14, align 8
  %173 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %172, i32 0, i32 0
  %174 = load i32, i32* %173, align 8
  %175 = load i32, i32* @LFS1_F_WRITING, align 4
  %176 = and i32 %174, %175
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %178, label %198

178:                                              ; preds = %171
  %179 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %180 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %181 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %180, i32 0, i32 1
  %182 = load %struct.TYPE_21__*, %struct.TYPE_21__** %14, align 8
  %183 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %182, i32 0, i32 3
  %184 = load %struct.TYPE_21__*, %struct.TYPE_21__** %14, align 8
  %185 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %184, i32 0, i32 2
  %186 = load i32, i32* %185, align 8
  %187 = load %struct.TYPE_21__*, %struct.TYPE_21__** %14, align 8
  %188 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %187, i32 0, i32 1
  %189 = load i32, i32* %188, align 4
  %190 = load i32 (i8*, i32)*, i32 (i8*, i32)** %6, align 8
  %191 = load i8*, i8** %7, align 8
  %192 = call i32 @lfs1_ctz_traverse(%struct.TYPE_20__* %179, i32* %181, i32* %183, i32 %186, i32 %189, i32 (i8*, i32)* %190, i8* %191)
  store i32 %192, i32* %16, align 4
  %193 = load i32, i32* %16, align 4
  %194 = icmp ne i32 %193, 0
  br i1 %194, label %195, label %197

195:                                              ; preds = %178
  %196 = load i32, i32* %16, align 4
  store i32 %196, i32* %4, align 4
  br label %204

197:                                              ; preds = %178
  br label %198

198:                                              ; preds = %197, %171
  br label %199

199:                                              ; preds = %198
  %200 = load %struct.TYPE_21__*, %struct.TYPE_21__** %14, align 8
  %201 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %200, i32 0, i32 6
  %202 = load %struct.TYPE_21__*, %struct.TYPE_21__** %201, align 8
  store %struct.TYPE_21__* %202, %struct.TYPE_21__** %14, align 8
  br label %141

203:                                              ; preds = %141
  store i32 0, i32* %4, align 4
  br label %204

204:                                              ; preds = %203, %195, %168, %115, %80, %51, %39, %22
  %205 = load i32, i32* %4, align 4
  ret i32 %205
}

declare dso_local i64 @lfs1_pairisnull(i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @lfs1_dir_fetch(%struct.TYPE_20__*, %struct.TYPE_23__*, i32*) #1

declare dso_local i32 @lfs1_bd_read(%struct.TYPE_20__*, i32, i32, %struct.TYPE_16__*, i32) #1

declare dso_local i32 @lfs1_entry_fromle32(%struct.TYPE_16__*) #1

declare dso_local i64 @lfs1_entry_size(%struct.TYPE_22__*) #1

declare dso_local i32 @lfs1_ctz_traverse(%struct.TYPE_20__*, i32*, i32*, i32, i32, i32 (i8*, i32)*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
