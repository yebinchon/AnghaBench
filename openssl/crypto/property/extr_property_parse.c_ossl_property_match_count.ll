; ModuleID = '/home/carl/AnghaBench/openssl/crypto/property/extr_property_parse.c_ossl_property_match_count.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/property/extr_property_parse.c_ossl_property_match_count.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i64, i64, i64, i32, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i64 }

@PROPERTY_OVERRIDE = common dso_local global i64 0, align 8
@PROPERTY_OPER_EQ = common dso_local global i64 0, align 8
@PROPERTY_OPER_NE = common dso_local global i64 0, align 8
@PROPERTY_TYPE_VALUE_UNDEFINED = common dso_local global i64 0, align 8
@PROPERTY_TYPE_STRING = common dso_local global i64 0, align 8
@ossl_property_false = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ossl_property_match_count(%struct.TYPE_8__* %0, %struct.TYPE_8__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca %struct.TYPE_7__*, align 8
  %7 = alloca %struct.TYPE_7__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %4, align 8
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %5, align 8
  %13 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 1
  %15 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  store %struct.TYPE_7__* %15, %struct.TYPE_7__** %6, align 8
  %16 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 1
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** %17, align 8
  store %struct.TYPE_7__* %18, %struct.TYPE_7__** %7, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  br label %19

19:                                               ; preds = %214, %130, %57, %34, %2
  %20 = load i32, i32* %8, align 4
  %21 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = icmp slt i32 %20, %23
  br i1 %24, label %25, label %217

25:                                               ; preds = %19
  %26 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %27 = load i32, i32* %8, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i64 %28
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  store i64 %31, i64* %11, align 8
  %32 = load i64, i64* @PROPERTY_OVERRIDE, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %37

34:                                               ; preds = %25
  %35 = load i32, i32* %8, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %8, align 4
  br label %19

37:                                               ; preds = %25
  %38 = load i32, i32* %9, align 4
  %39 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = icmp slt i32 %38, %41
  br i1 %42, label %43, label %136

43:                                               ; preds = %37
  %44 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %45 = load i32, i32* %8, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i64 %46
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %51 = load i32, i32* %9, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i64 %52
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = icmp sgt i64 %49, %55
  br i1 %56, label %57, label %60

57:                                               ; preds = %43
  %58 = load i32, i32* %9, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %9, align 4
  br label %19

60:                                               ; preds = %43
  %61 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %62 = load i32, i32* %8, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %61, i64 %63
  %65 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %68 = load i32, i32* %9, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %67, i64 %69
  %71 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %70, i32 0, i32 1
  %72 = load i64, i64* %71, align 8
  %73 = icmp eq i64 %66, %72
  br i1 %73, label %74, label %135

74:                                               ; preds = %60
  %75 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %76 = load i32, i32* %8, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %75, i64 %77
  %79 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %78, i32 0, i32 2
  %80 = load i64, i64* %79, align 8
  %81 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %82 = load i32, i32* %9, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %81, i64 %83
  %85 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %84, i32 0, i32 2
  %86 = load i64, i64* %85, align 8
  %87 = icmp eq i64 %80, %86
  br i1 %87, label %88, label %101

88:                                               ; preds = %74
  %89 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %90 = load i32, i32* %8, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %89, i64 %91
  %93 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %92, i32 0, i32 4
  %94 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %95 = load i32, i32* %9, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %94, i64 %96
  %98 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %97, i32 0, i32 4
  %99 = call i64 @memcmp(%struct.TYPE_9__* %93, %struct.TYPE_9__* %98, i32 8)
  %100 = icmp eq i64 %99, 0
  br label %101

101:                                              ; preds = %88, %74
  %102 = phi i1 [ false, %74 ], [ %100, %88 ]
  %103 = zext i1 %102 to i32
  store i32 %103, i32* %12, align 4
  %104 = load i32, i32* %12, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %110

106:                                              ; preds = %101
  %107 = load i64, i64* %11, align 8
  %108 = load i64, i64* @PROPERTY_OPER_EQ, align 8
  %109 = icmp eq i64 %107, %108
  br i1 %109, label %117, label %110

110:                                              ; preds = %106, %101
  %111 = load i32, i32* %12, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %120, label %113

113:                                              ; preds = %110
  %114 = load i64, i64* %11, align 8
  %115 = load i64, i64* @PROPERTY_OPER_NE, align 8
  %116 = icmp eq i64 %114, %115
  br i1 %116, label %117, label %120

117:                                              ; preds = %113, %106
  %118 = load i32, i32* %10, align 4
  %119 = add nsw i32 %118, 1
  store i32 %119, i32* %10, align 4
  br label %130

120:                                              ; preds = %113, %110
  %121 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %122 = load i32, i32* %8, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %121, i64 %123
  %125 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %124, i32 0, i32 3
  %126 = load i32, i32* %125, align 8
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %129, label %128

128:                                              ; preds = %120
  store i32 -1, i32* %3, align 4
  br label %219

129:                                              ; preds = %120
  br label %130

130:                                              ; preds = %129, %117
  %131 = load i32, i32* %8, align 4
  %132 = add nsw i32 %131, 1
  store i32 %132, i32* %8, align 4
  %133 = load i32, i32* %9, align 4
  %134 = add nsw i32 %133, 1
  store i32 %134, i32* %9, align 4
  br label %19

135:                                              ; preds = %60
  br label %136

136:                                              ; preds = %135, %37
  %137 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %138 = load i32, i32* %8, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %137, i64 %139
  %141 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %140, i32 0, i32 2
  %142 = load i64, i64* %141, align 8
  %143 = load i64, i64* @PROPERTY_TYPE_VALUE_UNDEFINED, align 8
  %144 = icmp eq i64 %142, %143
  br i1 %144, label %145, label %163

145:                                              ; preds = %136
  %146 = load i64, i64* %11, align 8
  %147 = load i64, i64* @PROPERTY_OPER_NE, align 8
  %148 = icmp eq i64 %146, %147
  br i1 %148, label %149, label %152

149:                                              ; preds = %145
  %150 = load i32, i32* %10, align 4
  %151 = add nsw i32 %150, 1
  store i32 %151, i32* %10, align 4
  br label %162

152:                                              ; preds = %145
  %153 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %154 = load i32, i32* %8, align 4
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %153, i64 %155
  %157 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %156, i32 0, i32 3
  %158 = load i32, i32* %157, align 8
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %161, label %160

160:                                              ; preds = %152
  store i32 -1, i32* %3, align 4
  br label %219

161:                                              ; preds = %152
  br label %162

162:                                              ; preds = %161, %149
  br label %214

163:                                              ; preds = %136
  %164 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %165 = load i32, i32* %8, align 4
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %164, i64 %166
  %168 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %167, i32 0, i32 2
  %169 = load i64, i64* %168, align 8
  %170 = load i64, i64* @PROPERTY_TYPE_STRING, align 8
  %171 = icmp ne i64 %169, %170
  br i1 %171, label %200, label %172

172:                                              ; preds = %163
  %173 = load i64, i64* %11, align 8
  %174 = load i64, i64* @PROPERTY_OPER_EQ, align 8
  %175 = icmp eq i64 %173, %174
  br i1 %175, label %176, label %186

176:                                              ; preds = %172
  %177 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %178 = load i32, i32* %8, align 4
  %179 = sext i32 %178 to i64
  %180 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %177, i64 %179
  %181 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %180, i32 0, i32 4
  %182 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %181, i32 0, i32 0
  %183 = load i64, i64* %182, align 8
  %184 = load i64, i64* @ossl_property_false, align 8
  %185 = icmp ne i64 %183, %184
  br i1 %185, label %200, label %186

186:                                              ; preds = %176, %172
  %187 = load i64, i64* %11, align 8
  %188 = load i64, i64* @PROPERTY_OPER_NE, align 8
  %189 = icmp eq i64 %187, %188
  br i1 %189, label %190, label %210

190:                                              ; preds = %186
  %191 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %192 = load i32, i32* %8, align 4
  %193 = sext i32 %192 to i64
  %194 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %191, i64 %193
  %195 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %194, i32 0, i32 4
  %196 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %195, i32 0, i32 0
  %197 = load i64, i64* %196, align 8
  %198 = load i64, i64* @ossl_property_false, align 8
  %199 = icmp eq i64 %197, %198
  br i1 %199, label %200, label %210

200:                                              ; preds = %190, %176, %163
  %201 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %202 = load i32, i32* %8, align 4
  %203 = sext i32 %202 to i64
  %204 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %201, i64 %203
  %205 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %204, i32 0, i32 3
  %206 = load i32, i32* %205, align 8
  %207 = icmp ne i32 %206, 0
  br i1 %207, label %209, label %208

208:                                              ; preds = %200
  store i32 -1, i32* %3, align 4
  br label %219

209:                                              ; preds = %200
  br label %213

210:                                              ; preds = %190, %186
  %211 = load i32, i32* %10, align 4
  %212 = add nsw i32 %211, 1
  store i32 %212, i32* %10, align 4
  br label %213

213:                                              ; preds = %210, %209
  br label %214

214:                                              ; preds = %213, %162
  %215 = load i32, i32* %8, align 4
  %216 = add nsw i32 %215, 1
  store i32 %216, i32* %8, align 4
  br label %19

217:                                              ; preds = %19
  %218 = load i32, i32* %10, align 4
  store i32 %218, i32* %3, align 4
  br label %219

219:                                              ; preds = %217, %208, %160, %128
  %220 = load i32, i32* %3, align 4
  ret i32 %220
}

declare dso_local i64 @memcmp(%struct.TYPE_9__*, %struct.TYPE_9__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
