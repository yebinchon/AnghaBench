; ModuleID = '/home/carl/AnghaBench/php-src/ext/opcache/Optimizer/extr_dce.c_may_have_side_effects.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/opcache/Optimizer/extr_dce.c_may_have_side_effects.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i64 }
%struct.TYPE_15__ = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_17__ = type { i32, i32, i32, i32 }
%struct.TYPE_14__ = type { i64, i64, i32 }

@IS_CONST = common dso_local global i32 0, align 4
@MAY_HAVE_DTOR = common dso_local global i32 0, align 4
@ESCAPE_STATE_NO_ESCAPE = common dso_local global i32 0, align 4
@MAY_BE_REF = common dso_local global i32 0, align 4
@ZEND_BIND_REF = common dso_local global i32 0, align 4
@IS_CONSTANT_AST = common dso_local global i32 0, align 4
@MAY_BE_UNDEF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_16__*, %struct.TYPE_15__*, %struct.TYPE_17__*, %struct.TYPE_14__*, i32)* @may_have_side_effects to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @may_have_side_effects(%struct.TYPE_16__* %0, %struct.TYPE_15__* %1, %struct.TYPE_17__* %2, %struct.TYPE_14__* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_16__*, align 8
  %8 = alloca %struct.TYPE_15__*, align 8
  %9 = alloca %struct.TYPE_17__*, align 8
  %10 = alloca %struct.TYPE_14__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %7, align 8
  store %struct.TYPE_15__* %1, %struct.TYPE_15__** %8, align 8
  store %struct.TYPE_17__* %2, %struct.TYPE_17__** %9, align 8
  store %struct.TYPE_14__* %3, %struct.TYPE_14__** %10, align 8
  store i32 %4, i32* %11, align 4
  %14 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %15 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  switch i32 %16, label %216 [
    i32 155, label %17
    i32 169, label %17
    i32 167, label %17
    i32 145, label %17
    i32 181, label %17
    i32 132, label %17
    i32 196, label %17
    i32 219, label %17
    i32 135, label %17
    i32 156, label %17
    i32 150, label %17
    i32 204, label %17
    i32 206, label %17
    i32 203, label %17
    i32 198, label %17
    i32 184, label %17
    i32 195, label %17
    i32 157, label %17
    i32 207, label %17
    i32 209, label %17
    i32 208, label %17
    i32 205, label %17
    i32 139, label %17
    i32 137, label %17
    i32 170, label %17
    i32 168, label %17
    i32 166, label %17
    i32 165, label %17
    i32 202, label %17
    i32 201, label %17
    i32 140, label %17
    i32 142, label %17
    i32 176, label %17
    i32 218, label %17
    i32 138, label %17
    i32 136, label %17
    i32 197, label %17
    i32 178, label %17
    i32 172, label %17
    i32 173, label %17
    i32 183, label %17
    i32 174, label %17
    i32 171, label %17
    i32 182, label %17
    i32 175, label %17
    i32 179, label %17
    i32 180, label %17
    i32 141, label %18
    i32 164, label %19
    i32 161, label %19
    i32 163, label %19
    i32 160, label %19
    i32 159, label %19
    i32 162, label %19
    i32 158, label %19
    i32 199, label %19
    i32 217, label %19
    i32 211, label %20
    i32 189, label %20
    i32 190, label %20
    i32 177, label %20
    i32 134, label %20
    i32 185, label %20
    i32 188, label %20
    i32 187, label %20
    i32 186, label %20
    i32 133, label %20
    i32 129, label %20
    i32 128, label %20
    i32 194, label %21
    i32 193, label %21
    i32 192, label %21
    i32 191, label %21
    i32 144, label %22
    i32 143, label %22
    i32 212, label %23
    i32 216, label %24
    i32 130, label %64
    i32 131, label %65
    i32 147, label %73
    i32 152, label %73
    i32 149, label %73
    i32 154, label %73
    i32 213, label %82
    i32 215, label %107
    i32 214, label %107
    i32 146, label %151
    i32 148, label %151
    i32 151, label %151
    i32 153, label %151
    i32 210, label %175
    i32 200, label %210
  ]

17:                                               ; preds = %5, %5, %5, %5, %5, %5, %5, %5, %5, %5, %5, %5, %5, %5, %5, %5, %5, %5, %5, %5, %5, %5, %5, %5, %5, %5, %5, %5, %5, %5, %5, %5, %5, %5, %5, %5, %5, %5, %5, %5, %5, %5, %5, %5, %5, %5, %5
  store i32 0, i32* %6, align 4
  br label %217

18:                                               ; preds = %5
  store i32 1, i32* %6, align 4
  br label %217

19:                                               ; preds = %5, %5, %5, %5, %5, %5, %5, %5, %5
  store i32 1, i32* %6, align 4
  br label %217

20:                                               ; preds = %5, %5, %5, %5, %5, %5, %5, %5, %5, %5, %5, %5
  store i32 1, i32* %6, align 4
  br label %217

21:                                               ; preds = %5, %5, %5, %5
  store i32 1, i32* %6, align 4
  br label %217

22:                                               ; preds = %5, %5
  store i32 1, i32* %6, align 4
  br label %217

23:                                               ; preds = %5
  store i32 1, i32* %6, align 4
  br label %217

24:                                               ; preds = %5
  %25 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %26 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %27 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 8
  %29 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %30 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = call i32 @is_bad_mod(%struct.TYPE_15__* %25, i32 %28, i64 %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %24
  store i32 1, i32* %6, align 4
  br label %217

35:                                               ; preds = %24
  %36 = load i32, i32* %11, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %63, label %38

38:                                               ; preds = %35
  %39 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %40 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %39, i32 0, i32 3
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @IS_CONST, align 4
  %43 = icmp ne i32 %41, %42
  br i1 %43, label %44, label %62

44:                                               ; preds = %38
  %45 = call i32 (...) @OP2_INFO()
  %46 = load i32, i32* @MAY_HAVE_DTOR, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %62

49:                                               ; preds = %44
  %50 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %51 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %50, i32 0, i32 0
  %52 = load %struct.TYPE_12__*, %struct.TYPE_12__** %51, align 8
  %53 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %54 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %52, i64 %55
  %57 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* @ESCAPE_STATE_NO_ESCAPE, align 4
  %60 = icmp ne i32 %58, %59
  br i1 %60, label %61, label %62

61:                                               ; preds = %49
  store i32 1, i32* %6, align 4
  br label %217

62:                                               ; preds = %49, %44, %38
  br label %63

63:                                               ; preds = %62, %35
  store i32 0, i32* %6, align 4
  br label %217

64:                                               ; preds = %5
  store i32 1, i32* %6, align 4
  br label %217

65:                                               ; preds = %5
  %66 = call i32 (...) @OP1_INFO()
  store i32 %66, i32* %12, align 4
  %67 = load i32, i32* %12, align 4
  %68 = load i32, i32* @MAY_BE_REF, align 4
  %69 = and i32 %67, %68
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %65
  store i32 1, i32* %6, align 4
  br label %217

72:                                               ; preds = %65
  store i32 0, i32* %6, align 4
  br label %217

73:                                               ; preds = %5, %5, %5, %5
  %74 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %75 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %76 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 8
  %78 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %79 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = call i32 @is_bad_mod(%struct.TYPE_15__* %74, i32 %77, i64 %80)
  store i32 %81, i32* %6, align 4
  br label %217

82:                                               ; preds = %5
  %83 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %84 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %85 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %84, i32 0, i32 2
  %86 = load i32, i32* %85, align 8
  %87 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %88 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = call i32 @is_bad_mod(%struct.TYPE_15__* %83, i32 %86, i64 %89)
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %104, label %92

92:                                               ; preds = %82
  %93 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %94 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %93, i32 0, i32 0
  %95 = load %struct.TYPE_12__*, %struct.TYPE_12__** %94, align 8
  %96 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %97 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %95, i64 %98
  %100 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = load i32, i32* @ESCAPE_STATE_NO_ESCAPE, align 4
  %103 = icmp ne i32 %101, %102
  br label %104

104:                                              ; preds = %92, %82
  %105 = phi i1 [ true, %82 ], [ %103, %92 ]
  %106 = zext i1 %105 to i32
  store i32 %106, i32* %6, align 4
  br label %217

107:                                              ; preds = %5, %5
  %108 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %109 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %110 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %109, i32 0, i32 2
  %111 = load i32, i32* %110, align 8
  %112 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %113 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %112, i32 0, i32 0
  %114 = load i64, i64* %113, align 8
  %115 = call i32 @is_bad_mod(%struct.TYPE_15__* %108, i32 %111, i64 %114)
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %129, label %117

117:                                              ; preds = %107
  %118 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %119 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %118, i32 0, i32 0
  %120 = load %struct.TYPE_12__*, %struct.TYPE_12__** %119, align 8
  %121 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %122 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %121, i32 0, i32 0
  %123 = load i64, i64* %122, align 8
  %124 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %120, i64 %123
  %125 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 4
  %127 = load i32, i32* @ESCAPE_STATE_NO_ESCAPE, align 4
  %128 = icmp ne i32 %126, %127
  br i1 %128, label %129, label %130

129:                                              ; preds = %117, %107
  store i32 1, i32* %6, align 4
  br label %217

130:                                              ; preds = %117
  %131 = load i32, i32* %11, align 4
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %150, label %133

133:                                              ; preds = %130
  %134 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %135 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %134, i32 1
  store %struct.TYPE_17__* %135, %struct.TYPE_17__** %9, align 8
  %136 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %137 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %136, i32 1
  store %struct.TYPE_14__* %137, %struct.TYPE_14__** %10, align 8
  %138 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %139 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %138, i32 0, i32 2
  %140 = load i32, i32* %139, align 4
  %141 = load i32, i32* @IS_CONST, align 4
  %142 = icmp ne i32 %140, %141
  br i1 %142, label %143, label %149

143:                                              ; preds = %133
  %144 = call i32 (...) @OP1_INFO()
  %145 = load i32, i32* @MAY_HAVE_DTOR, align 4
  %146 = and i32 %144, %145
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %149

148:                                              ; preds = %143
  store i32 1, i32* %6, align 4
  br label %217

149:                                              ; preds = %143, %133
  br label %150

150:                                              ; preds = %149, %130
  store i32 0, i32* %6, align 4
  br label %217

151:                                              ; preds = %5, %5, %5, %5
  %152 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %153 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %154 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %153, i32 0, i32 2
  %155 = load i32, i32* %154, align 8
  %156 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %157 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %156, i32 0, i32 0
  %158 = load i64, i64* %157, align 8
  %159 = call i32 @is_bad_mod(%struct.TYPE_15__* %152, i32 %155, i64 %158)
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %173, label %161

161:                                              ; preds = %151
  %162 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %163 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %162, i32 0, i32 0
  %164 = load %struct.TYPE_12__*, %struct.TYPE_12__** %163, align 8
  %165 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %166 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %165, i32 0, i32 0
  %167 = load i64, i64* %166, align 8
  %168 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %164, i64 %167
  %169 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %168, i32 0, i32 0
  %170 = load i32, i32* %169, align 4
  %171 = load i32, i32* @ESCAPE_STATE_NO_ESCAPE, align 4
  %172 = icmp ne i32 %170, %171
  br i1 %172, label %173, label %174

173:                                              ; preds = %161, %151
  store i32 1, i32* %6, align 4
  br label %217

174:                                              ; preds = %161
  store i32 0, i32* %6, align 4
  br label %217

175:                                              ; preds = %5
  %176 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %177 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %176, i32 0, i32 0
  %178 = load %struct.TYPE_13__*, %struct.TYPE_13__** %177, align 8
  %179 = icmp ne %struct.TYPE_13__* %178, null
  br i1 %179, label %180, label %209

180:                                              ; preds = %175
  %181 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %182 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %181, i32 0, i32 1
  %183 = load i32, i32* %182, align 4
  %184 = load i32, i32* @ZEND_BIND_REF, align 4
  %185 = and i32 %183, %184
  %186 = icmp ne i32 %185, 0
  br i1 %186, label %187, label %209

187:                                              ; preds = %180
  %188 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %189 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %188, i32 0, i32 0
  %190 = load %struct.TYPE_13__*, %struct.TYPE_13__** %189, align 8
  %191 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %190, i32 0, i32 0
  %192 = load i64, i64* %191, align 8
  %193 = inttoptr i64 %192 to i8*
  %194 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %195 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %194, i32 0, i32 1
  %196 = load i32, i32* %195, align 4
  %197 = load i32, i32* @ZEND_BIND_REF, align 4
  %198 = xor i32 %197, -1
  %199 = and i32 %196, %198
  %200 = sext i32 %199 to i64
  %201 = getelementptr inbounds i8, i8* %193, i64 %200
  %202 = bitcast i8* %201 to i32*
  store i32* %202, i32** %13, align 8
  %203 = load i32*, i32** %13, align 8
  %204 = call i32 @Z_TYPE_P(i32* %203)
  %205 = load i32, i32* @IS_CONSTANT_AST, align 4
  %206 = icmp eq i32 %204, %205
  br i1 %206, label %207, label %208

207:                                              ; preds = %187
  store i32 1, i32* %6, align 4
  br label %217

208:                                              ; preds = %187
  br label %209

209:                                              ; preds = %208, %180, %175
  store i32 0, i32* %6, align 4
  br label %217

210:                                              ; preds = %5
  %211 = call i32 (...) @OP1_INFO()
  %212 = load i32, i32* @MAY_BE_UNDEF, align 4
  %213 = and i32 %211, %212
  %214 = icmp ne i32 %213, 0
  %215 = zext i1 %214 to i32
  store i32 %215, i32* %6, align 4
  br label %217

216:                                              ; preds = %5
  store i32 1, i32* %6, align 4
  br label %217

217:                                              ; preds = %216, %210, %209, %207, %174, %173, %150, %148, %129, %104, %73, %72, %71, %64, %63, %61, %34, %23, %22, %21, %20, %19, %18, %17
  %218 = load i32, i32* %6, align 4
  ret i32 %218
}

declare dso_local i32 @is_bad_mod(%struct.TYPE_15__*, i32, i64) #1

declare dso_local i32 @OP2_INFO(...) #1

declare dso_local i32 @OP1_INFO(...) #1

declare dso_local i32 @Z_TYPE_P(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
