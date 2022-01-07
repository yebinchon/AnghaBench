; ModuleID = '/home/carl/AnghaBench/poco/Foundation/src/extr_pcre_compile.c_auto_possessify.c'
source_filename = "/home/carl/AnghaBench/poco/Foundation/src/extr_pcre_compile.c_auto_possessify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }

@OP_TABLE_LENGTH = common dso_local global i32 0, align 4
@OP_CLASS = common dso_local global i32 0, align 4
@OP_NCLASS = common dso_local global i32 0, align 4
@OP_CRPOSSTAR = common dso_local global i32 0, align 4
@OP_CRPOSPLUS = common dso_local global i32 0, align 4
@OP_CRPOSQUERY = common dso_local global i32 0, align 4
@OP_CRPOSRANGE = common dso_local global i32 0, align 4
@OP_PROP = common dso_local global i32 0, align 4
@OP_NOTPROP = common dso_local global i32 0, align 4
@IMM2_SIZE = common dso_local global i32 0, align 4
@OP_lengths = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, %struct.TYPE_4__*)* @auto_possessify to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @auto_possessify(i32* %0, i32 %1, %struct.TYPE_4__* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_4__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca [8 x i32], align 16
  %11 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.TYPE_4__* %2, %struct.TYPE_4__** %6, align 8
  br label %12

12:                                               ; preds = %233, %3
  %13 = load i32*, i32** %4, align 8
  %14 = load i32, i32* %13, align 4
  store i32 %14, i32* %7, align 4
  %15 = load i32, i32* %7, align 4
  %16 = load i32, i32* @OP_TABLE_LENGTH, align 4
  %17 = icmp sge i32 %15, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %12
  br label %244

19:                                               ; preds = %12
  %20 = load i32, i32* %7, align 4
  %21 = icmp sge i32 %20, 146
  br i1 %21, label %22, label %107

22:                                               ; preds = %19
  %23 = load i32, i32* %7, align 4
  %24 = icmp sle i32 %23, 134
  br i1 %24, label %25, label %107

25:                                               ; preds = %22
  %26 = load i32, i32* %7, align 4
  %27 = call i32 @get_repeat_base(i32 %26)
  %28 = sub nsw i32 %27, 146
  %29 = load i32, i32* %7, align 4
  %30 = sub nsw i32 %29, %28
  store i32 %30, i32* %7, align 4
  %31 = load i32, i32* %7, align 4
  %32 = icmp sle i32 %31, 190
  br i1 %32, label %33, label %41

33:                                               ; preds = %25
  %34 = load i32*, i32** %4, align 8
  %35 = load i32, i32* %5, align 4
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = getelementptr inbounds [8 x i32], [8 x i32]* %10, i64 0, i64 0
  %40 = call i32* @get_chr_property_list(i32* %34, i32 %35, i32 %38, i32* %39)
  br label %42

41:                                               ; preds = %25
  br label %42

42:                                               ; preds = %41, %33
  %43 = phi i32* [ %40, %33 ], [ null, %41 ]
  store i32* %43, i32** %8, align 8
  %44 = load i32, i32* %7, align 4
  %45 = icmp eq i32 %44, 146
  br i1 %45, label %55, label %46

46:                                               ; preds = %42
  %47 = load i32, i32* %7, align 4
  %48 = icmp eq i32 %47, 160
  br i1 %48, label %55, label %49

49:                                               ; preds = %46
  %50 = load i32, i32* %7, align 4
  %51 = icmp eq i32 %50, 149
  br i1 %51, label %55, label %52

52:                                               ; preds = %49
  %53 = load i32, i32* %7, align 4
  %54 = icmp eq i32 %53, 130
  br label %55

55:                                               ; preds = %52, %49, %46, %42
  %56 = phi i1 [ true, %49 ], [ true, %46 ], [ true, %42 ], [ %54, %52 ]
  %57 = zext i1 %56 to i32
  %58 = getelementptr inbounds [8 x i32], [8 x i32]* %10, i64 0, i64 1
  store i32 %57, i32* %58, align 4
  store i32 1000, i32* %11, align 4
  %59 = load i32*, i32** %8, align 8
  %60 = icmp ne i32* %59, null
  br i1 %60, label %61, label %104

61:                                               ; preds = %55
  %62 = load i32*, i32** %8, align 8
  %63 = load i32, i32* %5, align 4
  %64 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %65 = getelementptr inbounds [8 x i32], [8 x i32]* %10, i64 0, i64 0
  %66 = load i32*, i32** %8, align 8
  %67 = call i64 @compare_opcodes(i32* %62, i32 %63, %struct.TYPE_4__* %64, i32* %65, i32* %66, i32* %11)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %104

69:                                               ; preds = %61
  %70 = load i32, i32* %7, align 4
  switch i32 %70, label %103 [
    i32 146, label %71
    i32 192, label %75
    i32 160, label %79
    i32 196, label %83
    i32 149, label %87
    i32 194, label %91
    i32 130, label %95
    i32 190, label %99
  ]

71:                                               ; preds = %69
  %72 = load i32*, i32** %4, align 8
  %73 = load i32, i32* %72, align 4
  %74 = add nsw i32 %73, 8
  store i32 %74, i32* %72, align 4
  br label %103

75:                                               ; preds = %69
  %76 = load i32*, i32** %4, align 8
  %77 = load i32, i32* %76, align 4
  %78 = add nsw i32 %77, -38
  store i32 %78, i32* %76, align 4
  br label %103

79:                                               ; preds = %69
  %80 = load i32*, i32** %4, align 8
  %81 = load i32, i32* %80, align 4
  %82 = add nsw i32 %81, -2
  store i32 %82, i32* %80, align 4
  br label %103

83:                                               ; preds = %69
  %84 = load i32*, i32** %4, align 8
  %85 = load i32, i32* %84, align 4
  %86 = add nsw i32 %85, -38
  store i32 %86, i32* %84, align 4
  br label %103

87:                                               ; preds = %69
  %88 = load i32*, i32** %4, align 8
  %89 = load i32, i32* %88, align 4
  %90 = add nsw i32 %89, 7
  store i32 %90, i32* %88, align 4
  br label %103

91:                                               ; preds = %69
  %92 = load i32*, i32** %4, align 8
  %93 = load i32, i32* %92, align 4
  %94 = add nsw i32 %93, -38
  store i32 %94, i32* %92, align 4
  br label %103

95:                                               ; preds = %69
  %96 = load i32*, i32** %4, align 8
  %97 = load i32, i32* %96, align 4
  %98 = add nsw i32 %97, 22
  store i32 %98, i32* %96, align 4
  br label %103

99:                                               ; preds = %69
  %100 = load i32*, i32** %4, align 8
  %101 = load i32, i32* %100, align 4
  %102 = add nsw i32 %101, -38
  store i32 %102, i32* %100, align 4
  br label %103

103:                                              ; preds = %69, %99, %95, %91, %87, %83, %79, %75, %71
  br label %104

104:                                              ; preds = %103, %61, %55
  %105 = load i32*, i32** %4, align 8
  %106 = load i32, i32* %105, align 4
  store i32 %106, i32* %7, align 4
  br label %179

107:                                              ; preds = %22, %19
  %108 = load i32, i32* %7, align 4
  %109 = load i32, i32* @OP_CLASS, align 4
  %110 = icmp eq i32 %108, %109
  br i1 %110, label %118, label %111

111:                                              ; preds = %107
  %112 = load i32, i32* %7, align 4
  %113 = load i32, i32* @OP_NCLASS, align 4
  %114 = icmp eq i32 %112, %113
  br i1 %114, label %118, label %115

115:                                              ; preds = %111
  %116 = load i32, i32* %7, align 4
  %117 = icmp eq i32 %116, 128
  br i1 %117, label %118, label %178

118:                                              ; preds = %115, %111, %107
  %119 = load i32, i32* %7, align 4
  %120 = icmp eq i32 %119, 128
  br i1 %120, label %121, label %127

121:                                              ; preds = %118
  %122 = load i32*, i32** %4, align 8
  %123 = load i32*, i32** %4, align 8
  %124 = call i32 @GET(i32* %123, i32 1)
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds i32, i32* %122, i64 %125
  store i32* %126, i32** %9, align 8
  br label %131

127:                                              ; preds = %118
  %128 = load i32*, i32** %4, align 8
  %129 = getelementptr inbounds i32, i32* %128, i64 1
  %130 = getelementptr inbounds i32, i32* %129, i64 8
  store i32* %130, i32** %9, align 8
  br label %131

131:                                              ; preds = %127, %121
  %132 = load i32*, i32** %9, align 8
  %133 = load i32, i32* %132, align 4
  store i32 %133, i32* %7, align 4
  %134 = load i32, i32* %7, align 4
  %135 = icmp sge i32 %134, 201
  br i1 %135, label %136, label %175

136:                                              ; preds = %131
  %137 = load i32, i32* %7, align 4
  %138 = icmp sle i32 %137, 206
  br i1 %138, label %139, label %175

139:                                              ; preds = %136
  %140 = load i32*, i32** %4, align 8
  %141 = load i32, i32* %5, align 4
  %142 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %143 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 4
  %145 = getelementptr inbounds [8 x i32], [8 x i32]* %10, i64 0, i64 0
  %146 = call i32* @get_chr_property_list(i32* %140, i32 %141, i32 %144, i32* %145)
  store i32* %146, i32** %8, align 8
  %147 = load i32, i32* %7, align 4
  %148 = and i32 %147, 1
  %149 = icmp eq i32 %148, 0
  %150 = zext i1 %149 to i32
  %151 = getelementptr inbounds [8 x i32], [8 x i32]* %10, i64 0, i64 1
  store i32 %150, i32* %151, align 4
  store i32 1000, i32* %11, align 4
  %152 = load i32*, i32** %8, align 8
  %153 = load i32, i32* %5, align 4
  %154 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %155 = getelementptr inbounds [8 x i32], [8 x i32]* %10, i64 0, i64 0
  %156 = load i32*, i32** %8, align 8
  %157 = call i64 @compare_opcodes(i32* %152, i32 %153, %struct.TYPE_4__* %154, i32* %155, i32* %156, i32* %11)
  %158 = icmp ne i64 %157, 0
  br i1 %158, label %159, label %174

159:                                              ; preds = %139
  %160 = load i32, i32* %7, align 4
  switch i32 %160, label %173 [
    i32 201, label %161
    i32 205, label %161
    i32 204, label %164
    i32 208, label %164
    i32 203, label %167
    i32 207, label %167
    i32 202, label %170
    i32 206, label %170
  ]

161:                                              ; preds = %159, %159
  %162 = load i32, i32* @OP_CRPOSSTAR, align 4
  %163 = load i32*, i32** %9, align 8
  store i32 %162, i32* %163, align 4
  br label %173

164:                                              ; preds = %159, %159
  %165 = load i32, i32* @OP_CRPOSPLUS, align 4
  %166 = load i32*, i32** %9, align 8
  store i32 %165, i32* %166, align 4
  br label %173

167:                                              ; preds = %159, %159
  %168 = load i32, i32* @OP_CRPOSQUERY, align 4
  %169 = load i32*, i32** %9, align 8
  store i32 %168, i32* %169, align 4
  br label %173

170:                                              ; preds = %159, %159
  %171 = load i32, i32* @OP_CRPOSRANGE, align 4
  %172 = load i32*, i32** %9, align 8
  store i32 %171, i32* %172, align 4
  br label %173

173:                                              ; preds = %159, %170, %167, %164, %161
  br label %174

174:                                              ; preds = %173, %139
  br label %175

175:                                              ; preds = %174, %136, %131
  %176 = load i32*, i32** %4, align 8
  %177 = load i32, i32* %176, align 4
  store i32 %177, i32* %7, align 4
  br label %178

178:                                              ; preds = %175, %115
  br label %179

179:                                              ; preds = %178, %104
  %180 = load i32, i32* %7, align 4
  switch i32 %180, label %233 [
    i32 200, label %181
    i32 132, label %182
    i32 140, label %182
    i32 138, label %182
    i32 142, label %182
    i32 133, label %182
    i32 141, label %182
    i32 135, label %182
    i32 137, label %182
    i32 136, label %182
    i32 131, label %198
    i32 139, label %198
    i32 143, label %198
    i32 134, label %198
    i32 128, label %220
    i32 197, label %226
    i32 150, label %226
    i32 147, label %226
    i32 144, label %226
  ]

181:                                              ; preds = %179
  br label %244

182:                                              ; preds = %179, %179, %179, %179, %179, %179, %179, %179, %179
  %183 = load i32*, i32** %4, align 8
  %184 = getelementptr inbounds i32, i32* %183, i64 1
  %185 = load i32, i32* %184, align 4
  %186 = load i32, i32* @OP_PROP, align 4
  %187 = icmp eq i32 %185, %186
  br i1 %187, label %194, label %188

188:                                              ; preds = %182
  %189 = load i32*, i32** %4, align 8
  %190 = getelementptr inbounds i32, i32* %189, i64 1
  %191 = load i32, i32* %190, align 4
  %192 = load i32, i32* @OP_NOTPROP, align 4
  %193 = icmp eq i32 %191, %192
  br i1 %193, label %194, label %197

194:                                              ; preds = %188, %182
  %195 = load i32*, i32** %4, align 8
  %196 = getelementptr inbounds i32, i32* %195, i64 2
  store i32* %196, i32** %4, align 8
  br label %197

197:                                              ; preds = %194, %188
  br label %233

198:                                              ; preds = %179, %179, %179, %179
  %199 = load i32*, i32** %4, align 8
  %200 = load i32, i32* @IMM2_SIZE, align 4
  %201 = add nsw i32 1, %200
  %202 = sext i32 %201 to i64
  %203 = getelementptr inbounds i32, i32* %199, i64 %202
  %204 = load i32, i32* %203, align 4
  %205 = load i32, i32* @OP_PROP, align 4
  %206 = icmp eq i32 %204, %205
  br i1 %206, label %216, label %207

207:                                              ; preds = %198
  %208 = load i32*, i32** %4, align 8
  %209 = load i32, i32* @IMM2_SIZE, align 4
  %210 = add nsw i32 1, %209
  %211 = sext i32 %210 to i64
  %212 = getelementptr inbounds i32, i32* %208, i64 %211
  %213 = load i32, i32* %212, align 4
  %214 = load i32, i32* @OP_NOTPROP, align 4
  %215 = icmp eq i32 %213, %214
  br i1 %215, label %216, label %219

216:                                              ; preds = %207, %198
  %217 = load i32*, i32** %4, align 8
  %218 = getelementptr inbounds i32, i32* %217, i64 2
  store i32* %218, i32** %4, align 8
  br label %219

219:                                              ; preds = %216, %207
  br label %233

220:                                              ; preds = %179
  %221 = load i32*, i32** %4, align 8
  %222 = call i32 @GET(i32* %221, i32 1)
  %223 = load i32*, i32** %4, align 8
  %224 = sext i32 %222 to i64
  %225 = getelementptr inbounds i32, i32* %223, i64 %224
  store i32* %225, i32** %4, align 8
  br label %233

226:                                              ; preds = %179, %179, %179, %179
  %227 = load i32*, i32** %4, align 8
  %228 = getelementptr inbounds i32, i32* %227, i64 1
  %229 = load i32, i32* %228, align 4
  %230 = load i32*, i32** %4, align 8
  %231 = sext i32 %229 to i64
  %232 = getelementptr inbounds i32, i32* %230, i64 %231
  store i32* %232, i32** %4, align 8
  br label %233

233:                                              ; preds = %179, %226, %220, %219, %197
  %234 = load i32, i32* @OP_lengths, align 4
  %235 = call i32* @PRIV(i32 %234)
  %236 = load i32, i32* %7, align 4
  %237 = sext i32 %236 to i64
  %238 = getelementptr inbounds i32, i32* %235, i64 %237
  %239 = load i32, i32* %238, align 4
  %240 = load i32*, i32** %4, align 8
  %241 = sext i32 %239 to i64
  %242 = getelementptr inbounds i32, i32* %240, i64 %241
  store i32* %242, i32** %4, align 8
  %243 = load i32, i32* %5, align 4
  br label %12

244:                                              ; preds = %181, %18
  ret void
}

declare dso_local i32 @get_repeat_base(i32) #1

declare dso_local i32* @get_chr_property_list(i32*, i32, i32, i32*) #1

declare dso_local i64 @compare_opcodes(i32*, i32, %struct.TYPE_4__*, i32*, i32*, i32*) #1

declare dso_local i32 @GET(i32*, i32) #1

declare dso_local i32* @PRIV(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
