; ModuleID = '/home/carl/AnghaBench/radare2/libr/core/extr_cmd_print.c_printzoomcallback.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/core/extr_cmd_print.c_printzoomcallback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, i32 }
%struct.count_pz_t = type { i32, i32*, i32, i32 }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_10__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32, i32, i32, i32, i32, i32, i32 }

@count_pzf = common dso_local global i32 0, align 4
@R_FLAGS_FS_STRINGS = common dso_local global i32 0, align 4
@count_pzs = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i32, i32*, i32)* @printzoomcallback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @printzoomcallback(i8* %0, i32 %1, i32 %2, i32* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_11__*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.count_pz_t, align 8
  %16 = alloca %struct.TYPE_12__*, align 8
  %17 = alloca i32, align 4
  %18 = alloca %struct.TYPE_10__*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store i8* %0, i8** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32* %3, i32** %10, align 8
  store i32 %4, i32* %11, align 4
  %21 = load i8*, i8** %7, align 8
  %22 = bitcast i8* %21 to %struct.TYPE_11__*
  store %struct.TYPE_11__* %22, %struct.TYPE_11__** %12, align 8
  store i32 0, i32* %14, align 4
  %23 = load i32, i32* %8, align 4
  switch i32 %23, label %224 [
    i32 97, label %24
    i32 65, label %39
    i32 48, label %131
    i32 101, label %151
    i32 102, label %156
    i32 70, label %165
    i32 112, label %185
    i32 115, label %206
    i32 104, label %223
  ]

24:                                               ; preds = %5
  %25 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %26 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* %9, align 4
  %29 = call %struct.TYPE_12__* @r_anal_get_fcn_in(i32 %27, i32 %28, i32 0)
  store %struct.TYPE_12__* %29, %struct.TYPE_12__** %16, align 8
  store i32 0, i32* %17, align 4
  %30 = load %struct.TYPE_12__*, %struct.TYPE_12__** %16, align 8
  %31 = icmp ne %struct.TYPE_12__* %30, null
  br i1 %31, label %32, label %37

32:                                               ; preds = %24
  %33 = load %struct.TYPE_12__*, %struct.TYPE_12__** %16, align 8
  %34 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @r_list_length(i32 %35)
  store i32 %36, i32* %17, align 4
  br label %37

37:                                               ; preds = %32, %24
  %38 = load i32, i32* %17, align 4
  store i32 %38, i32* %6, align 4
  br label %229

39:                                               ; preds = %5
  %40 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %41 = load i32, i32* %9, align 4
  %42 = load i32, i32* %9, align 4
  %43 = load i32, i32* %11, align 4
  %44 = mul nsw i32 %43, 2
  %45 = add nsw i32 %42, %44
  %46 = load i32, i32* %11, align 4
  %47 = call %struct.TYPE_10__* @r_core_anal_get_stats(%struct.TYPE_11__* %40, i32 %41, i32 %45, i32 %46)
  store %struct.TYPE_10__* %47, %struct.TYPE_10__** %18, align 8
  store i32 0, i32* %20, align 4
  store i32 0, i32* %19, align 4
  br label %48

48:                                               ; preds = %124, %39
  %49 = load i32, i32* %19, align 4
  %50 = icmp slt i32 %49, 1
  br i1 %50, label %51, label %127

51:                                               ; preds = %48
  %52 = load %struct.TYPE_10__*, %struct.TYPE_10__** %18, align 8
  %53 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %52, i32 0, i32 0
  %54 = load %struct.TYPE_9__*, %struct.TYPE_9__** %53, align 8
  %55 = load i32, i32* %19, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %54, i64 %56
  %58 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* %20, align 4
  %61 = add nsw i32 %60, %59
  store i32 %61, i32* %20, align 4
  %62 = load %struct.TYPE_10__*, %struct.TYPE_10__** %18, align 8
  %63 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %62, i32 0, i32 0
  %64 = load %struct.TYPE_9__*, %struct.TYPE_9__** %63, align 8
  %65 = load i32, i32* %19, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %64, i64 %66
  %68 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* %20, align 4
  %71 = add nsw i32 %70, %69
  store i32 %71, i32* %20, align 4
  %72 = load %struct.TYPE_10__*, %struct.TYPE_10__** %18, align 8
  %73 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %72, i32 0, i32 0
  %74 = load %struct.TYPE_9__*, %struct.TYPE_9__** %73, align 8
  %75 = load i32, i32* %19, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %74, i64 %76
  %78 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 4
  %80 = load i32, i32* %20, align 4
  %81 = add nsw i32 %80, %79
  store i32 %81, i32* %20, align 4
  %82 = load %struct.TYPE_10__*, %struct.TYPE_10__** %18, align 8
  %83 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %82, i32 0, i32 0
  %84 = load %struct.TYPE_9__*, %struct.TYPE_9__** %83, align 8
  %85 = load i32, i32* %19, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %84, i64 %86
  %88 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %87, i32 0, i32 3
  %89 = load i32, i32* %88, align 4
  %90 = load i32, i32* %20, align 4
  %91 = add nsw i32 %90, %89
  store i32 %91, i32* %20, align 4
  %92 = load %struct.TYPE_10__*, %struct.TYPE_10__** %18, align 8
  %93 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %92, i32 0, i32 0
  %94 = load %struct.TYPE_9__*, %struct.TYPE_9__** %93, align 8
  %95 = load i32, i32* %19, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %94, i64 %96
  %98 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %97, i32 0, i32 4
  %99 = load i32, i32* %98, align 4
  %100 = load i32, i32* %20, align 4
  %101 = add nsw i32 %100, %99
  store i32 %101, i32* %20, align 4
  %102 = load %struct.TYPE_10__*, %struct.TYPE_10__** %18, align 8
  %103 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %102, i32 0, i32 0
  %104 = load %struct.TYPE_9__*, %struct.TYPE_9__** %103, align 8
  %105 = load i32, i32* %19, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %104, i64 %106
  %108 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %107, i32 0, i32 5
  %109 = load i32, i32* %108, align 4
  %110 = load i32, i32* %20, align 4
  %111 = add nsw i32 %110, %109
  store i32 %111, i32* %20, align 4
  %112 = load %struct.TYPE_10__*, %struct.TYPE_10__** %18, align 8
  %113 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %112, i32 0, i32 0
  %114 = load %struct.TYPE_9__*, %struct.TYPE_9__** %113, align 8
  %115 = load i32, i32* %19, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %114, i64 %116
  %118 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %117, i32 0, i32 6
  %119 = load i32, i32* %118, align 4
  %120 = load i32, i32* %20, align 4
  %121 = add nsw i32 %120, %119
  store i32 %121, i32* %20, align 4
  %122 = load i32, i32* %20, align 4
  %123 = mul nsw i32 %122, 20
  store i32 %123, i32* %20, align 4
  br label %124

124:                                              ; preds = %51
  %125 = load i32, i32* %19, align 4
  %126 = add nsw i32 %125, 1
  store i32 %126, i32* %19, align 4
  br label %48

127:                                              ; preds = %48
  %128 = load %struct.TYPE_10__*, %struct.TYPE_10__** %18, align 8
  %129 = call i32 @r_core_anal_stats_free(%struct.TYPE_10__* %128)
  %130 = load i32, i32* %20, align 4
  store i32 %130, i32* %6, align 4
  br label %229

131:                                              ; preds = %5
  store i32 0, i32* %13, align 4
  br label %132

132:                                              ; preds = %147, %131
  %133 = load i32, i32* %13, align 4
  %134 = load i32, i32* %11, align 4
  %135 = icmp slt i32 %133, %134
  br i1 %135, label %136, label %150

136:                                              ; preds = %132
  %137 = load i32*, i32** %10, align 8
  %138 = load i32, i32* %13, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds i32, i32* %137, i64 %139
  %141 = load i32, i32* %140, align 4
  %142 = icmp eq i32 %141, 0
  br i1 %142, label %143, label %146

143:                                              ; preds = %136
  %144 = load i32, i32* %14, align 4
  %145 = add nsw i32 %144, 1
  store i32 %145, i32* %14, align 4
  br label %146

146:                                              ; preds = %143, %136
  br label %147

147:                                              ; preds = %146
  %148 = load i32, i32* %13, align 4
  %149 = add nsw i32 %148, 1
  store i32 %149, i32* %13, align 4
  br label %132

150:                                              ; preds = %132
  br label %227

151:                                              ; preds = %5
  %152 = load i32*, i32** %10, align 8
  %153 = load i32, i32* %11, align 4
  %154 = call i32 @r_hash_entropy_fraction(i32* %152, i32 %153)
  %155 = mul nsw i32 %154, 255
  store i32 %155, i32* %14, align 4
  br label %227

156:                                              ; preds = %5
  %157 = load i32, i32* %9, align 4
  %158 = getelementptr inbounds %struct.count_pz_t, %struct.count_pz_t* %15, i32 0, i32 0
  store i32 %157, i32* %158, align 8
  %159 = getelementptr inbounds %struct.count_pz_t, %struct.count_pz_t* %15, i32 0, i32 1
  store i32* %14, i32** %159, align 8
  %160 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %161 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 4
  %163 = load i32, i32* @count_pzf, align 4
  %164 = call i32 @r_flag_foreach(i32 %162, i32 %163, %struct.count_pz_t* %15)
  br label %227

165:                                              ; preds = %5
  store i32 0, i32* %13, align 4
  br label %166

166:                                              ; preds = %181, %165
  %167 = load i32, i32* %13, align 4
  %168 = load i32, i32* %11, align 4
  %169 = icmp slt i32 %167, %168
  br i1 %169, label %170, label %184

170:                                              ; preds = %166
  %171 = load i32*, i32** %10, align 8
  %172 = load i32, i32* %13, align 4
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds i32, i32* %171, i64 %173
  %175 = load i32, i32* %174, align 4
  %176 = icmp eq i32 %175, 255
  br i1 %176, label %177, label %180

177:                                              ; preds = %170
  %178 = load i32, i32* %14, align 4
  %179 = add nsw i32 %178, 1
  store i32 %179, i32* %14, align 4
  br label %180

180:                                              ; preds = %177, %170
  br label %181

181:                                              ; preds = %180
  %182 = load i32, i32* %13, align 4
  %183 = add nsw i32 %182, 1
  store i32 %183, i32* %13, align 4
  br label %166

184:                                              ; preds = %166
  br label %227

185:                                              ; preds = %5
  store i32 0, i32* %13, align 4
  br label %186

186:                                              ; preds = %202, %185
  %187 = load i32, i32* %13, align 4
  %188 = load i32, i32* %11, align 4
  %189 = icmp slt i32 %187, %188
  br i1 %189, label %190, label %205

190:                                              ; preds = %186
  %191 = load i32*, i32** %10, align 8
  %192 = load i32, i32* %13, align 4
  %193 = sext i32 %192 to i64
  %194 = getelementptr inbounds i32, i32* %191, i64 %193
  %195 = load i32, i32* %194, align 4
  %196 = call i32 @IS_PRINTABLE(i32 %195)
  %197 = icmp ne i32 %196, 0
  br i1 %197, label %198, label %201

198:                                              ; preds = %190
  %199 = load i32, i32* %14, align 4
  %200 = add nsw i32 %199, 1
  store i32 %200, i32* %14, align 4
  br label %201

201:                                              ; preds = %198, %190
  br label %202

202:                                              ; preds = %201
  %203 = load i32, i32* %13, align 4
  %204 = add nsw i32 %203, 1
  store i32 %204, i32* %13, align 4
  br label %186

205:                                              ; preds = %186
  br label %227

206:                                              ; preds = %5
  %207 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %208 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %207, i32 0, i32 0
  %209 = load i32, i32* %208, align 4
  %210 = load i32, i32* @R_FLAGS_FS_STRINGS, align 4
  %211 = call i32 @r_flag_space_get(i32 %209, i32 %210)
  %212 = getelementptr inbounds %struct.count_pz_t, %struct.count_pz_t* %15, i32 0, i32 3
  store i32 %211, i32* %212, align 4
  %213 = load i32, i32* %9, align 4
  %214 = getelementptr inbounds %struct.count_pz_t, %struct.count_pz_t* %15, i32 0, i32 0
  store i32 %213, i32* %214, align 8
  %215 = load i32, i32* %11, align 4
  %216 = getelementptr inbounds %struct.count_pz_t, %struct.count_pz_t* %15, i32 0, i32 2
  store i32 %215, i32* %216, align 8
  %217 = getelementptr inbounds %struct.count_pz_t, %struct.count_pz_t* %15, i32 0, i32 1
  store i32* %14, i32** %217, align 8
  %218 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %219 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %218, i32 0, i32 0
  %220 = load i32, i32* %219, align 4
  %221 = load i32, i32* @count_pzs, align 4
  %222 = call i32 @r_flag_foreach(i32 %220, i32 %221, %struct.count_pz_t* %15)
  br label %227

223:                                              ; preds = %5
  br label %224

224:                                              ; preds = %5, %223
  %225 = load i32*, i32** %10, align 8
  %226 = load i32, i32* %225, align 4
  store i32 %226, i32* %14, align 4
  br label %227

227:                                              ; preds = %224, %206, %205, %184, %156, %151, %150
  %228 = load i32, i32* %14, align 4
  store i32 %228, i32* %6, align 4
  br label %229

229:                                              ; preds = %227, %127, %37
  %230 = load i32, i32* %6, align 4
  ret i32 %230
}

declare dso_local %struct.TYPE_12__* @r_anal_get_fcn_in(i32, i32, i32) #1

declare dso_local i32 @r_list_length(i32) #1

declare dso_local %struct.TYPE_10__* @r_core_anal_get_stats(%struct.TYPE_11__*, i32, i32, i32) #1

declare dso_local i32 @r_core_anal_stats_free(%struct.TYPE_10__*) #1

declare dso_local i32 @r_hash_entropy_fraction(i32*, i32) #1

declare dso_local i32 @r_flag_foreach(i32, i32, %struct.count_pz_t*) #1

declare dso_local i32 @IS_PRINTABLE(i32) #1

declare dso_local i32 @r_flag_space_get(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
