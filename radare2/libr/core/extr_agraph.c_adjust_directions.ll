; ModuleID = '/home/carl/AnghaBench/radare2/libr/core/extr_agraph.c_adjust_directions.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/core/extr_agraph.c_adjust_directions.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, %struct.TYPE_6__*, i32 }
%struct.TYPE_6__ = type { i32, i32** }
%struct.TYPE_7__ = type { i32, i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_8__*, i32, i32, i32*, i32*)* @adjust_directions to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @adjust_directions(%struct.TYPE_8__* %0, i32 %1, i32 %2, i32* %3, i32* %4) #0 {
  %6 = alloca %struct.TYPE_8__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca %struct.TYPE_7__*, align 8
  %14 = alloca %struct.TYPE_7__*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca %struct.TYPE_7__*, align 8
  %20 = alloca %struct.TYPE_7__*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32*, align 8
  %24 = alloca %struct.TYPE_7__*, align 8
  %25 = alloca i32*, align 8
  %26 = alloca %struct.TYPE_7__*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  store i32* %4, i32** %10, align 8
  store i32* null, i32** %11, align 8
  store i32* null, i32** %12, align 8
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %13, align 8
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %14, align 8
  %27 = load i32, i32* %8, align 4
  %28 = icmp ne i32 %27, 0
  %29 = zext i1 %28 to i64
  %30 = select i1 %28, i32 1, i32 -1
  store i32 %30, i32* %16, align 4
  %31 = load i32, i32* %7, align 4
  %32 = load i32, i32* %16, align 4
  %33 = add nsw i32 %31, %32
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %43, label %35

35:                                               ; preds = %5
  %36 = load i32, i32* %7, align 4
  %37 = load i32, i32* %16, align 4
  %38 = add nsw i32 %36, %37
  %39 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = icmp sge i32 %38, %41
  br i1 %42, label %43, label %44

43:                                               ; preds = %35, %5
  br label %222

44:                                               ; preds = %35
  store i32 0, i32* %15, align 4
  br label %45

45:                                               ; preds = %219, %44
  %46 = load i32, i32* %15, align 4
  %47 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i32 0, i32 1
  %49 = load %struct.TYPE_6__*, %struct.TYPE_6__** %48, align 8
  %50 = load i32, i32* %7, align 4
  %51 = load i32, i32* %16, align 4
  %52 = add nsw i32 %50, %51
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i64 %53
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = icmp slt i32 %46, %56
  br i1 %57, label %58, label %222

58:                                               ; preds = %45
  %59 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %60 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %59, i32 0, i32 1
  %61 = load %struct.TYPE_6__*, %struct.TYPE_6__** %60, align 8
  %62 = load i32, i32* %7, align 4
  %63 = load i32, i32* %16, align 4
  %64 = add nsw i32 %62, %63
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i64 %65
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 1
  %68 = load i32**, i32*** %67, align 8
  %69 = load i32, i32* %15, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i32*, i32** %68, i64 %70
  %72 = load i32*, i32** %71, align 8
  store i32* %72, i32** %18, align 8
  %73 = load i32*, i32** %18, align 8
  %74 = call %struct.TYPE_7__* @get_anode(i32* %73)
  store %struct.TYPE_7__* %74, %struct.TYPE_7__** %20, align 8
  %75 = load %struct.TYPE_7__*, %struct.TYPE_7__** %20, align 8
  %76 = icmp ne %struct.TYPE_7__* %75, null
  br i1 %76, label %77, label %82

77:                                               ; preds = %58
  %78 = load %struct.TYPE_7__*, %struct.TYPE_7__** %20, align 8
  %79 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %78, i32 0, i32 2
  %80 = load i64, i64* %79, align 8
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %83, label %82

82:                                               ; preds = %77, %58
  br label %219

83:                                               ; preds = %77
  %84 = load i32, i32* %8, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %93

86:                                               ; preds = %83
  %87 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %88 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 8
  %90 = load i32*, i32** %18, align 8
  %91 = call i32 @r_graph_innodes(i32 %89, i32* %90)
  %92 = call i32* @r_list_get_n(i32 %91, i32 0)
  store i32* %92, i32** %17, align 8
  br label %99

93:                                               ; preds = %83
  %94 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %95 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %94, i32 0, i32 2
  %96 = load i32, i32* %95, align 8
  %97 = load i32*, i32** %18, align 8
  %98 = call i32* @r_graph_nth_neighbour(i32 %96, i32* %97, i32 0)
  store i32* %98, i32** %17, align 8
  br label %99

99:                                               ; preds = %93, %86
  %100 = load i32*, i32** %17, align 8
  %101 = call %struct.TYPE_7__* @get_anode(i32* %100)
  store %struct.TYPE_7__* %101, %struct.TYPE_7__** %19, align 8
  %102 = load %struct.TYPE_7__*, %struct.TYPE_7__** %19, align 8
  %103 = icmp ne %struct.TYPE_7__* %102, null
  br i1 %103, label %104, label %109

104:                                              ; preds = %99
  %105 = load %struct.TYPE_7__*, %struct.TYPE_7__** %19, align 8
  %106 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %105, i32 0, i32 2
  %107 = load i64, i64* %106, align 8
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %110, label %109

109:                                              ; preds = %104, %99
  br label %219

110:                                              ; preds = %104
  %111 = load i32*, i32** %11, align 8
  %112 = icmp ne i32* %111, null
  br i1 %112, label %113, label %212

113:                                              ; preds = %110
  %114 = load i32*, i32** %10, align 8
  %115 = load i32*, i32** %12, align 8
  %116 = call i32 @hash_get_int(i32* %114, i32* %115)
  store i32 %116, i32* %21, align 4
  %117 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %118 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 8
  %120 = add nsw i32 %119, 1
  store i32 %120, i32* %22, align 4
  br label %121

121:                                              ; preds = %157, %113
  %122 = load i32, i32* %22, align 4
  %123 = load %struct.TYPE_7__*, %struct.TYPE_7__** %19, align 8
  %124 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 8
  %126 = icmp slt i32 %122, %125
  br i1 %126, label %127, label %160

127:                                              ; preds = %121
  %128 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %129 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %128, i32 0, i32 1
  %130 = load %struct.TYPE_6__*, %struct.TYPE_6__** %129, align 8
  %131 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %132 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %131, i32 0, i32 1
  %133 = load i64, i64* %132, align 8
  %134 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %130, i64 %133
  %135 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %134, i32 0, i32 1
  %136 = load i32**, i32*** %135, align 8
  %137 = load i32, i32* %22, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds i32*, i32** %136, i64 %138
  %140 = load i32*, i32** %139, align 8
  store i32* %140, i32** %23, align 8
  %141 = load i32*, i32** %23, align 8
  %142 = call %struct.TYPE_7__* @get_anode(i32* %141)
  store %struct.TYPE_7__* %142, %struct.TYPE_7__** %24, align 8
  %143 = load %struct.TYPE_7__*, %struct.TYPE_7__** %24, align 8
  %144 = icmp ne %struct.TYPE_7__* %143, null
  br i1 %144, label %145, label %156

145:                                              ; preds = %127
  %146 = load %struct.TYPE_7__*, %struct.TYPE_7__** %24, align 8
  %147 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %146, i32 0, i32 2
  %148 = load i64, i64* %147, align 8
  %149 = icmp ne i64 %148, 0
  br i1 %149, label %150, label %156

150:                                              ; preds = %145
  %151 = load i32*, i32** %10, align 8
  %152 = load i32*, i32** %23, align 8
  %153 = call i32 @hash_get_int(i32* %151, i32* %152)
  %154 = load i32, i32* %21, align 4
  %155 = and i32 %154, %153
  store i32 %155, i32* %21, align 4
  br label %156

156:                                              ; preds = %150, %145, %127
  br label %157

157:                                              ; preds = %156
  %158 = load i32, i32* %22, align 4
  %159 = add nsw i32 %158, 1
  store i32 %159, i32* %22, align 4
  br label %121

160:                                              ; preds = %121
  %161 = load i32, i32* %21, align 4
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %163, label %211

163:                                              ; preds = %160
  %164 = load i32*, i32** %9, align 8
  %165 = load i32*, i32** %11, align 8
  %166 = load i32, i32* %8, align 4
  %167 = call i32 @hash_set(i32* %164, i32* %165, i32 %166)
  %168 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %169 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %168, i32 0, i32 0
  %170 = load i32, i32* %169, align 8
  %171 = add nsw i32 %170, 1
  store i32 %171, i32* %22, align 4
  br label %172

172:                                              ; preds = %207, %163
  %173 = load i32, i32* %22, align 4
  %174 = load %struct.TYPE_7__*, %struct.TYPE_7__** %20, align 8
  %175 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %174, i32 0, i32 0
  %176 = load i32, i32* %175, align 8
  %177 = icmp slt i32 %173, %176
  br i1 %177, label %178, label %210

178:                                              ; preds = %172
  %179 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %180 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %179, i32 0, i32 1
  %181 = load %struct.TYPE_6__*, %struct.TYPE_6__** %180, align 8
  %182 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %183 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %182, i32 0, i32 1
  %184 = load i64, i64* %183, align 8
  %185 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %181, i64 %184
  %186 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %185, i32 0, i32 1
  %187 = load i32**, i32*** %186, align 8
  %188 = load i32, i32* %22, align 4
  %189 = sext i32 %188 to i64
  %190 = getelementptr inbounds i32*, i32** %187, i64 %189
  %191 = load i32*, i32** %190, align 8
  store i32* %191, i32** %25, align 8
  %192 = load i32*, i32** %25, align 8
  %193 = call %struct.TYPE_7__* @get_anode(i32* %192)
  store %struct.TYPE_7__* %193, %struct.TYPE_7__** %26, align 8
  %194 = load %struct.TYPE_7__*, %struct.TYPE_7__** %26, align 8
  %195 = icmp ne %struct.TYPE_7__* %194, null
  br i1 %195, label %196, label %206

196:                                              ; preds = %178
  %197 = load %struct.TYPE_7__*, %struct.TYPE_7__** %26, align 8
  %198 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %197, i32 0, i32 2
  %199 = load i64, i64* %198, align 8
  %200 = icmp ne i64 %199, 0
  br i1 %200, label %201, label %206

201:                                              ; preds = %196
  %202 = load i32*, i32** %9, align 8
  %203 = load i32*, i32** %25, align 8
  %204 = load i32, i32* %8, align 4
  %205 = call i32 @hash_set(i32* %202, i32* %203, i32 %204)
  br label %206

206:                                              ; preds = %201, %196, %178
  br label %207

207:                                              ; preds = %206
  %208 = load i32, i32* %22, align 4
  %209 = add nsw i32 %208, 1
  store i32 %209, i32* %22, align 4
  br label %172

210:                                              ; preds = %172
  br label %211

211:                                              ; preds = %210, %160
  br label %212

212:                                              ; preds = %211, %110
  %213 = load i32*, i32** %18, align 8
  store i32* %213, i32** %11, align 8
  %214 = load i32*, i32** %17, align 8
  store i32* %214, i32** %12, align 8
  %215 = load i32*, i32** %11, align 8
  %216 = call %struct.TYPE_7__* @get_anode(i32* %215)
  store %struct.TYPE_7__* %216, %struct.TYPE_7__** %13, align 8
  %217 = load i32*, i32** %12, align 8
  %218 = call %struct.TYPE_7__* @get_anode(i32* %217)
  store %struct.TYPE_7__* %218, %struct.TYPE_7__** %14, align 8
  br label %219

219:                                              ; preds = %212, %109, %82
  %220 = load i32, i32* %15, align 4
  %221 = add nsw i32 %220, 1
  store i32 %221, i32* %15, align 4
  br label %45

222:                                              ; preds = %43, %45
  ret void
}

declare dso_local %struct.TYPE_7__* @get_anode(i32*) #1

declare dso_local i32* @r_list_get_n(i32, i32) #1

declare dso_local i32 @r_graph_innodes(i32, i32*) #1

declare dso_local i32* @r_graph_nth_neighbour(i32, i32*, i32) #1

declare dso_local i32 @hash_get_int(i32*, i32*) #1

declare dso_local i32 @hash_set(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
