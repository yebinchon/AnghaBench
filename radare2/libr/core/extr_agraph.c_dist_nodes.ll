; ModuleID = '/home/carl/AnghaBench/radare2/libr/core/extr_agraph.c_dist_nodes.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/core/extr_agraph.c_dist_nodes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32** }
%struct.dist_t = type { i32, i32*, i32* }
%struct.TYPE_7__ = type { i64, i32, i32, i64 }

@find_dist = common dso_local global i64 0, align 8
@HORIZONTAL_NODE_SPACING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_8__*, i32*, i32*)* @dist_nodes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dist_nodes(%struct.TYPE_8__* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.dist_t, align 8
  %9 = alloca %struct.TYPE_7__*, align 8
  %10 = alloca %struct.TYPE_7__*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.dist_t*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca %struct.TYPE_7__*, align 8
  %18 = alloca %struct.TYPE_7__*, align 8
  %19 = alloca i32, align 4
  %20 = alloca %struct.dist_t*, align 8
  %21 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32 0, i32* %12, align 4
  %22 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %47

26:                                               ; preds = %3
  %27 = load i32*, i32** %6, align 8
  %28 = getelementptr inbounds %struct.dist_t, %struct.dist_t* %8, i32 0, i32 2
  store i32* %27, i32** %28, align 8
  %29 = load i32*, i32** %7, align 8
  %30 = getelementptr inbounds %struct.dist_t, %struct.dist_t* %8, i32 0, i32 1
  store i32* %29, i32** %30, align 8
  %31 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @find_dist, align 8
  %35 = trunc i64 %34 to i32
  %36 = call i32* @r_list_find(i64 %33, %struct.dist_t* %8, i32 %35)
  store i32* %36, i32** %11, align 8
  %37 = load i32*, i32** %11, align 8
  %38 = icmp ne i32* %37, null
  br i1 %38, label %39, label %46

39:                                               ; preds = %26
  %40 = load i32*, i32** %11, align 8
  %41 = call i64 @r_list_iter_get_data(i32* %40)
  %42 = inttoptr i64 %41 to %struct.dist_t*
  store %struct.dist_t* %42, %struct.dist_t** %13, align 8
  %43 = load %struct.dist_t*, %struct.dist_t** %13, align 8
  %44 = getelementptr inbounds %struct.dist_t, %struct.dist_t* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  store i32 %45, i32* %4, align 4
  br label %217

46:                                               ; preds = %26
  br label %47

47:                                               ; preds = %46, %3
  %48 = load i32*, i32** %6, align 8
  %49 = call %struct.TYPE_7__* @get_anode(i32* %48)
  store %struct.TYPE_7__* %49, %struct.TYPE_7__** %9, align 8
  %50 = load i32*, i32** %7, align 8
  %51 = call %struct.TYPE_7__* @get_anode(i32* %50)
  store %struct.TYPE_7__* %51, %struct.TYPE_7__** %10, align 8
  %52 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %53 = icmp ne %struct.TYPE_7__* %52, null
  br i1 %53, label %54, label %215

54:                                               ; preds = %47
  %55 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %56 = icmp ne %struct.TYPE_7__* %55, null
  br i1 %56, label %57, label %215

57:                                               ; preds = %54
  %58 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %62 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = icmp eq i64 %60, %63
  br i1 %64, label %65, label %215

65:                                               ; preds = %57
  %66 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %67 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %68 = icmp eq %struct.TYPE_7__* %66, %67
  br i1 %68, label %69, label %76

69:                                               ; preds = %65
  %70 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %71 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %70, i32 0, i32 3
  %72 = load i64, i64* %71, align 8
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %76, label %74

74:                                               ; preds = %69
  %75 = load i32, i32* @HORIZONTAL_NODE_SPACING, align 4
  br label %77

76:                                               ; preds = %69, %65
  br label %77

77:                                               ; preds = %76, %74
  %78 = phi i32 [ %75, %74 ], [ 0, %76 ]
  store i32 %78, i32* %12, align 4
  %79 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %80 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 8
  store i32 %81, i32* %14, align 4
  br label %82

82:                                               ; preds = %211, %77
  %83 = load i32, i32* %14, align 4
  %84 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %85 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 8
  %87 = icmp slt i32 %83, %86
  br i1 %87, label %88, label %214

88:                                               ; preds = %82
  %89 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %90 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %89, i32 0, i32 1
  %91 = load %struct.TYPE_6__*, %struct.TYPE_6__** %90, align 8
  %92 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %93 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %91, i64 %94
  %96 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %95, i32 0, i32 0
  %97 = load i32**, i32*** %96, align 8
  %98 = load i32, i32* %14, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds i32*, i32** %97, i64 %99
  %101 = load i32*, i32** %100, align 8
  store i32* %101, i32** %15, align 8
  %102 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %103 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %102, i32 0, i32 1
  %104 = load %struct.TYPE_6__*, %struct.TYPE_6__** %103, align 8
  %105 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %106 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %105, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %104, i64 %107
  %109 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %108, i32 0, i32 0
  %110 = load i32**, i32*** %109, align 8
  %111 = load i32, i32* %14, align 4
  %112 = add nsw i32 %111, 1
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds i32*, i32** %110, i64 %113
  %115 = load i32*, i32** %114, align 8
  store i32* %115, i32** %16, align 8
  %116 = load i32*, i32** %16, align 8
  %117 = call %struct.TYPE_7__* @get_anode(i32* %116)
  store %struct.TYPE_7__* %117, %struct.TYPE_7__** %17, align 8
  %118 = load i32*, i32** %15, align 8
  %119 = call %struct.TYPE_7__* @get_anode(i32* %118)
  store %struct.TYPE_7__* %119, %struct.TYPE_7__** %18, align 8
  store i32 0, i32* %19, align 4
  %120 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %121 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %120, i32 0, i32 0
  %122 = load i64, i64* %121, align 8
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %147

124:                                              ; preds = %88
  %125 = load i32*, i32** %15, align 8
  %126 = getelementptr inbounds %struct.dist_t, %struct.dist_t* %8, i32 0, i32 2
  store i32* %125, i32** %126, align 8
  %127 = load i32*, i32** %16, align 8
  %128 = getelementptr inbounds %struct.dist_t, %struct.dist_t* %8, i32 0, i32 1
  store i32* %127, i32** %128, align 8
  %129 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %130 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %129, i32 0, i32 0
  %131 = load i64, i64* %130, align 8
  %132 = load i64, i64* @find_dist, align 8
  %133 = trunc i64 %132 to i32
  %134 = call i32* @r_list_find(i64 %131, %struct.dist_t* %8, i32 %133)
  store i32* %134, i32** %11, align 8
  %135 = load i32*, i32** %11, align 8
  %136 = icmp ne i32* %135, null
  br i1 %136, label %137, label %146

137:                                              ; preds = %124
  %138 = load i32*, i32** %11, align 8
  %139 = call i64 @r_list_iter_get_data(i32* %138)
  %140 = inttoptr i64 %139 to %struct.dist_t*
  store %struct.dist_t* %140, %struct.dist_t** %20, align 8
  %141 = load %struct.dist_t*, %struct.dist_t** %20, align 8
  %142 = getelementptr inbounds %struct.dist_t, %struct.dist_t* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 8
  %144 = load i32, i32* %12, align 4
  %145 = add nsw i32 %144, %143
  store i32 %145, i32* %12, align 4
  store i32 1, i32* %19, align 4
  br label %146

146:                                              ; preds = %137, %124
  br label %147

147:                                              ; preds = %146, %88
  %148 = load %struct.TYPE_7__*, %struct.TYPE_7__** %18, align 8
  %149 = icmp ne %struct.TYPE_7__* %148, null
  br i1 %149, label %150, label %210

150:                                              ; preds = %147
  %151 = load %struct.TYPE_7__*, %struct.TYPE_7__** %17, align 8
  %152 = icmp ne %struct.TYPE_7__* %151, null
  br i1 %152, label %153, label %210

153:                                              ; preds = %150
  %154 = load i32, i32* %19, align 4
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %210, label %156

156:                                              ; preds = %153
  %157 = load i32, i32* @HORIZONTAL_NODE_SPACING, align 4
  store i32 %157, i32* %21, align 4
  %158 = load %struct.TYPE_7__*, %struct.TYPE_7__** %18, align 8
  %159 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %158, i32 0, i32 3
  %160 = load i64, i64* %159, align 8
  %161 = icmp ne i64 %160, 0
  br i1 %161, label %162, label %195

162:                                              ; preds = %156
  %163 = load %struct.TYPE_7__*, %struct.TYPE_7__** %17, align 8
  %164 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %163, i32 0, i32 3
  %165 = load i64, i64* %164, align 8
  %166 = icmp ne i64 %165, 0
  br i1 %166, label %167, label %195

167:                                              ; preds = %162
  %168 = load %struct.TYPE_7__*, %struct.TYPE_7__** %18, align 8
  %169 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %168, i32 0, i32 3
  %170 = load i64, i64* %169, align 8
  %171 = icmp ne i64 %170, 0
  br i1 %171, label %179, label %172

172:                                              ; preds = %167
  %173 = load %struct.TYPE_7__*, %struct.TYPE_7__** %18, align 8
  %174 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %173, i32 0, i32 2
  %175 = load i32, i32* %174, align 4
  %176 = sdiv i32 %175, 2
  %177 = load i32, i32* %12, align 4
  %178 = add nsw i32 %177, %176
  store i32 %178, i32* %12, align 4
  br label %192

179:                                              ; preds = %167
  %180 = load %struct.TYPE_7__*, %struct.TYPE_7__** %17, align 8
  %181 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %180, i32 0, i32 3
  %182 = load i64, i64* %181, align 8
  %183 = icmp ne i64 %182, 0
  br i1 %183, label %191, label %184

184:                                              ; preds = %179
  %185 = load %struct.TYPE_7__*, %struct.TYPE_7__** %17, align 8
  %186 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %185, i32 0, i32 2
  %187 = load i32, i32* %186, align 4
  %188 = sdiv i32 %187, 2
  %189 = load i32, i32* %12, align 4
  %190 = add nsw i32 %189, %188
  store i32 %190, i32* %12, align 4
  br label %191

191:                                              ; preds = %184, %179
  br label %192

192:                                              ; preds = %191, %172
  %193 = load i32, i32* %12, align 4
  %194 = add nsw i32 %193, 1
  store i32 %194, i32* %12, align 4
  br label %209

195:                                              ; preds = %162, %156
  %196 = load %struct.TYPE_7__*, %struct.TYPE_7__** %18, align 8
  %197 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %196, i32 0, i32 2
  %198 = load i32, i32* %197, align 4
  %199 = sdiv i32 %198, 2
  %200 = load %struct.TYPE_7__*, %struct.TYPE_7__** %17, align 8
  %201 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %200, i32 0, i32 2
  %202 = load i32, i32* %201, align 4
  %203 = sdiv i32 %202, 2
  %204 = add nsw i32 %199, %203
  %205 = load i32, i32* %21, align 4
  %206 = add nsw i32 %204, %205
  %207 = load i32, i32* %12, align 4
  %208 = add nsw i32 %207, %206
  store i32 %208, i32* %12, align 4
  br label %209

209:                                              ; preds = %195, %192
  br label %210

210:                                              ; preds = %209, %153, %150, %147
  br label %211

211:                                              ; preds = %210
  %212 = load i32, i32* %14, align 4
  %213 = add nsw i32 %212, 1
  store i32 %213, i32* %14, align 4
  br label %82

214:                                              ; preds = %82
  br label %215

215:                                              ; preds = %214, %57, %54, %47
  %216 = load i32, i32* %12, align 4
  store i32 %216, i32* %4, align 4
  br label %217

217:                                              ; preds = %215, %39
  %218 = load i32, i32* %4, align 4
  ret i32 %218
}

declare dso_local i32* @r_list_find(i64, %struct.dist_t*, i32) #1

declare dso_local i64 @r_list_iter_get_data(i32*) #1

declare dso_local %struct.TYPE_7__* @get_anode(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
