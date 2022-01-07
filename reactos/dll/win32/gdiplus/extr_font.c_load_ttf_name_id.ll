; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/gdiplus/extr_font.c_load_ttf_name_id.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/gdiplus/extr_font.c_load_ttf_name_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i32, i32 }
%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_9__ = type { i32, i32, i32, i32, i32 }
%struct.TYPE_7__ = type { i32, i32 }

@.str = private unnamed_addr constant [5 x i8] c"name\00", align 1
@.str.1 = private unnamed_addr constant [40 x i8] c"name %u found platform %u lang %04x %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i32, i32)* @load_ttf_name_id to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @load_ttf_name_id(i32* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_10__*, align 8
  %10 = alloca %struct.TYPE_8__*, align 8
  %11 = alloca %struct.TYPE_9__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca %struct.TYPE_7__*, align 8
  %20 = alloca i32*, align 8
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %21 = call i32 (...) @GetSystemDefaultLangID()
  store i32 %21, i32* %8, align 4
  store i32 0, i32* %17, align 4
  store i32 -1, i32* %18, align 4
  %22 = load i32, i32* %6, align 4
  %23 = sext i32 %22 to i64
  %24 = icmp ugt i64 12, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %3
  store i32* null, i32** %4, align 8
  br label %223

26:                                               ; preds = %3
  %27 = load i32*, i32** %5, align 8
  %28 = bitcast i32* %27 to %struct.TYPE_10__*
  store %struct.TYPE_10__* %28, %struct.TYPE_10__** %9, align 8
  %29 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %30 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @GET_BE_WORD(i32 %31)
  store i32 %32, i32* %14, align 4
  %33 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %34 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @GET_BE_WORD(i32 %35)
  %37 = icmp ne i32 %36, 1
  br i1 %37, label %44, label %38

38:                                               ; preds = %26
  %39 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %40 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @GET_BE_WORD(i32 %41)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %38, %26
  store i32* null, i32** %4, align 8
  br label %223

45:                                               ; preds = %38
  store i32 12, i32* %12, align 4
  store i32 0, i32* %15, align 4
  br label %46

46:                                               ; preds = %71, %45
  %47 = load i32, i32* %15, align 4
  %48 = load i32, i32* %14, align 4
  %49 = icmp slt i32 %47, %48
  br i1 %49, label %50, label %74

50:                                               ; preds = %46
  %51 = load i32*, i32** %5, align 8
  %52 = load i32, i32* %12, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i32, i32* %51, i64 %53
  %55 = bitcast i32* %54 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %55, %struct.TYPE_7__** %19, align 8
  %56 = load i32, i32* %12, align 4
  %57 = sext i32 %56 to i64
  %58 = add i64 %57, 8
  %59 = trunc i64 %58 to i32
  store i32 %59, i32* %12, align 4
  %60 = load %struct.TYPE_7__*, %struct.TYPE_7__** %19, align 8
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = call i64 @memcmp(i32 %62, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 4)
  %64 = icmp eq i64 %63, 0
  br i1 %64, label %65, label %70

65:                                               ; preds = %50
  %66 = load %struct.TYPE_7__*, %struct.TYPE_7__** %19, align 8
  %67 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @GET_BE_DWORD(i32 %68)
  store i32 %69, i32* %13, align 4
  br label %74

70:                                               ; preds = %50
  br label %71

71:                                               ; preds = %70
  %72 = load i32, i32* %15, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %15, align 4
  br label %46

74:                                               ; preds = %65, %46
  %75 = load i32, i32* %15, align 4
  %76 = load i32, i32* %14, align 4
  %77 = icmp sge i32 %75, %76
  br i1 %77, label %78, label %79

78:                                               ; preds = %74
  store i32* null, i32** %4, align 8
  br label %223

79:                                               ; preds = %74
  %80 = load i32, i32* %13, align 4
  %81 = load i32, i32* %6, align 4
  %82 = icmp sge i32 %80, %81
  br i1 %82, label %83, label %84

83:                                               ; preds = %79
  store i32* null, i32** %4, align 8
  br label %223

84:                                               ; preds = %79
  %85 = load i32, i32* %13, align 4
  %86 = sext i32 %85 to i64
  %87 = add i64 %86, 8
  %88 = trunc i64 %87 to i32
  store i32 %88, i32* %12, align 4
  %89 = load i32, i32* %12, align 4
  %90 = load i32, i32* %6, align 4
  %91 = icmp sgt i32 %89, %90
  br i1 %91, label %92, label %93

92:                                               ; preds = %84
  store i32* null, i32** %4, align 8
  br label %223

93:                                               ; preds = %84
  %94 = load i32*, i32** %5, align 8
  %95 = load i32, i32* %13, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds i32, i32* %94, i64 %96
  %98 = bitcast i32* %97 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %98, %struct.TYPE_8__** %10, align 8
  %99 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %100 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = call i32 @GET_BE_WORD(i32 %101)
  store i32 %102, i32* %14, align 4
  %103 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %104 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = call i32 @GET_BE_WORD(i32 %105)
  %107 = load i32, i32* %6, align 4
  %108 = load i32, i32* %13, align 4
  %109 = sub nsw i32 %107, %108
  %110 = icmp sge i32 %106, %109
  br i1 %110, label %111, label %112

111:                                              ; preds = %93
  store i32* null, i32** %4, align 8
  br label %223

112:                                              ; preds = %93
  %113 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %114 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = call i32 @GET_BE_WORD(i32 %115)
  %117 = load i32, i32* %13, align 4
  %118 = add nsw i32 %117, %116
  store i32 %118, i32* %13, align 4
  store i32 0, i32* %15, align 4
  br label %119

119:                                              ; preds = %181, %112
  %120 = load i32, i32* %15, align 4
  %121 = load i32, i32* %14, align 4
  %122 = icmp slt i32 %120, %121
  br i1 %122, label %123, label %184

123:                                              ; preds = %119
  %124 = load i32*, i32** %5, align 8
  %125 = load i32, i32* %12, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds i32, i32* %124, i64 %126
  %128 = bitcast i32* %127 to %struct.TYPE_9__*
  store %struct.TYPE_9__* %128, %struct.TYPE_9__** %11, align 8
  %129 = load i32, i32* %12, align 4
  %130 = sext i32 %129 to i64
  %131 = add i64 %130, 20
  %132 = trunc i64 %131 to i32
  store i32 %132, i32* %12, align 4
  %133 = load i32, i32* %12, align 4
  %134 = load i32, i32* %6, align 4
  %135 = icmp sgt i32 %133, %134
  br i1 %135, label %136, label %137

136:                                              ; preds = %123
  store i32* null, i32** %4, align 8
  br label %223

137:                                              ; preds = %123
  %138 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %139 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %138, i32 0, i32 2
  %140 = load i32, i32* %139, align 4
  %141 = call i32 @GET_BE_WORD(i32 %140)
  %142 = load i32, i32* %7, align 4
  %143 = icmp ne i32 %141, %142
  br i1 %143, label %144, label %145

144:                                              ; preds = %137
  br label %181

145:                                              ; preds = %137
  %146 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %147 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %146, i32 0, i32 3
  %148 = load i32, i32* %147, align 4
  %149 = call i32 @GET_BE_WORD(i32 %148)
  %150 = load i32, i32* %6, align 4
  %151 = load i32, i32* %13, align 4
  %152 = sub nsw i32 %150, %151
  %153 = icmp sge i32 %149, %152
  br i1 %153, label %154, label %155

154:                                              ; preds = %145
  store i32* null, i32** %4, align 8
  br label %223

155:                                              ; preds = %145
  %156 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %157 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %156, i32 0, i32 4
  %158 = load i32, i32* %157, align 4
  %159 = call i32 @GET_BE_WORD(i32 %158)
  %160 = load i32, i32* %6, align 4
  %161 = load i32, i32* %13, align 4
  %162 = sub nsw i32 %160, %161
  %163 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %164 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %163, i32 0, i32 3
  %165 = load i32, i32* %164, align 4
  %166 = call i32 @GET_BE_WORD(i32 %165)
  %167 = sub nsw i32 %162, %166
  %168 = icmp sgt i32 %159, %167
  br i1 %168, label %169, label %170

169:                                              ; preds = %155
  store i32* null, i32** %4, align 8
  br label %223

170:                                              ; preds = %155
  %171 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %172 = load i32, i32* %8, align 4
  %173 = call i32 @match_name_table_language(%struct.TYPE_9__* %171, i32 %172)
  store i32 %173, i32* %16, align 4
  %174 = load i32, i32* %16, align 4
  %175 = load i32, i32* %17, align 4
  %176 = icmp sgt i32 %174, %175
  br i1 %176, label %177, label %180

177:                                              ; preds = %170
  %178 = load i32, i32* %16, align 4
  store i32 %178, i32* %17, align 4
  %179 = load i32, i32* %15, align 4
  store i32 %179, i32* %18, align 4
  br label %180

180:                                              ; preds = %177, %170
  br label %181

181:                                              ; preds = %180, %144
  %182 = load i32, i32* %15, align 4
  %183 = add nsw i32 %182, 1
  store i32 %183, i32* %15, align 4
  br label %119

184:                                              ; preds = %119
  %185 = load i32, i32* %17, align 4
  %186 = icmp ne i32 %185, 0
  br i1 %186, label %187, label %222

187:                                              ; preds = %184
  %188 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %189 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %188, i64 1
  %190 = bitcast %struct.TYPE_8__* %189 to %struct.TYPE_9__*
  %191 = load i32, i32* %18, align 4
  %192 = sext i32 %191 to i64
  %193 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %190, i64 %192
  store %struct.TYPE_9__* %193, %struct.TYPE_9__** %11, align 8
  %194 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %195 = load i32*, i32** %5, align 8
  %196 = load i32, i32* %13, align 4
  %197 = sext i32 %196 to i64
  %198 = getelementptr inbounds i32, i32* %195, i64 %197
  %199 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %200 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %199, i32 0, i32 3
  %201 = load i32, i32* %200, align 4
  %202 = call i32 @GET_BE_WORD(i32 %201)
  %203 = sext i32 %202 to i64
  %204 = getelementptr inbounds i32, i32* %198, i64 %203
  %205 = call i32* @copy_name_table_string(%struct.TYPE_9__* %194, i32* %204)
  store i32* %205, i32** %20, align 8
  %206 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %207 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %206, i32 0, i32 2
  %208 = load i32, i32* %207, align 4
  %209 = call i32 @GET_BE_WORD(i32 %208)
  %210 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %211 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %210, i32 0, i32 1
  %212 = load i32, i32* %211, align 4
  %213 = call i32 @GET_BE_WORD(i32 %212)
  %214 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %215 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %214, i32 0, i32 0
  %216 = load i32, i32* %215, align 4
  %217 = call i32 @GET_BE_WORD(i32 %216)
  %218 = load i32*, i32** %20, align 8
  %219 = call i32 @debugstr_w(i32* %218)
  %220 = call i32 @TRACE(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i32 %209, i32 %213, i32 %217, i32 %219)
  %221 = load i32*, i32** %20, align 8
  store i32* %221, i32** %4, align 8
  br label %223

222:                                              ; preds = %184
  store i32* null, i32** %4, align 8
  br label %223

223:                                              ; preds = %222, %187, %169, %154, %136, %111, %92, %83, %78, %44, %25
  %224 = load i32*, i32** %4, align 8
  ret i32* %224
}

declare dso_local i32 @GetSystemDefaultLangID(...) #1

declare dso_local i32 @GET_BE_WORD(i32) #1

declare dso_local i64 @memcmp(i32, i8*, i32) #1

declare dso_local i32 @GET_BE_DWORD(i32) #1

declare dso_local i32 @match_name_table_language(%struct.TYPE_9__*, i32) #1

declare dso_local i32* @copy_name_table_string(%struct.TYPE_9__*, i32*) #1

declare dso_local i32 @TRACE(i8*, i32, i32, i32, i32) #1

declare dso_local i32 @debugstr_w(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
