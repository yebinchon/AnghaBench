; ModuleID = '/home/carl/AnghaBench/phpredis/extr_redis_array_impl.c_ra_find_node.c'
source_filename = "/home/carl/AnghaBench/phpredis/extr_redis_array_impl.c_ra_find_node.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i64, i32*, %struct.TYPE_10__*, i32*, i32 }
%struct.TYPE_10__ = type { i32, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i64, i32 }
%struct.TYPE_11__ = type { i32, i32 (i8*, i8*)*, i32 (i8*, i8*, i32)*, i32 (i8*)*, i32 }

@IS_NULL = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @ra_find_node(%struct.TYPE_12__* %0, i8* %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_12__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca %struct.TYPE_11__*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  %19 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %20 = load i8*, i8** %7, align 8
  %21 = load i32, i32* %8, align 4
  %22 = call i32* @ra_extract_key(%struct.TYPE_12__* %19, i8* %20, i32 %21)
  store i32* %22, i32** %11, align 8
  %23 = icmp eq i32* %22, null
  br i1 %23, label %24, label %25

24:                                               ; preds = %4
  store i32* null, i32** %5, align 8
  br label %210

25:                                               ; preds = %4
  %26 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %27 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %26, i32 0, i32 4
  %28 = load i32, i32* %27, align 8
  %29 = call i64 @Z_TYPE(i32 %28)
  %30 = load i64, i64* @IS_NULL, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %177

32:                                               ; preds = %25
  store i64 4294967295, i64* %13, align 8
  %33 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %34 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %33, i32 0, i32 3
  %35 = load i32*, i32** %34, align 8
  %36 = icmp ne i32* %35, null
  br i1 %36, label %37, label %90

37:                                               ; preds = %32
  %38 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %39 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %38, i32 0, i32 3
  %40 = load i32*, i32** %39, align 8
  %41 = call i32* @ZSTR_VAL(i32* %40)
  %42 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %43 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %42, i32 0, i32 3
  %44 = load i32*, i32** %43, align 8
  %45 = call i32 @ZSTR_LEN(i32* %44)
  %46 = call %struct.TYPE_11__* @php_hash_fetch_ops(i32* %41, i32 %45)
  store %struct.TYPE_11__* %46, %struct.TYPE_11__** %14, align 8
  %47 = icmp ne %struct.TYPE_11__* %46, null
  br i1 %47, label %48, label %90

48:                                               ; preds = %37
  %49 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %50 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %49, i32 0, i32 4
  %51 = load i32, i32* %50, align 8
  %52 = call i8* @emalloc(i32 %51)
  store i8* %52, i8** %15, align 8
  %53 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %54 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = call i8* @emalloc(i32 %55)
  store i8* %56, i8** %16, align 8
  %57 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %58 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %57, i32 0, i32 3
  %59 = load i32 (i8*)*, i32 (i8*)** %58, align 8
  %60 = load i8*, i8** %15, align 8
  %61 = call i32 %59(i8* %60)
  %62 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %63 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %62, i32 0, i32 2
  %64 = load i32 (i8*, i8*, i32)*, i32 (i8*, i8*, i32)** %63, align 8
  %65 = load i8*, i8** %15, align 8
  %66 = load i32*, i32** %11, align 8
  %67 = call i32* @ZSTR_VAL(i32* %66)
  %68 = bitcast i32* %67 to i8*
  %69 = load i32*, i32** %11, align 8
  %70 = call i32 @ZSTR_LEN(i32* %69)
  %71 = call i32 %64(i8* %65, i8* %68, i32 %70)
  %72 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %73 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %72, i32 0, i32 1
  %74 = load i32 (i8*, i8*)*, i32 (i8*, i8*)** %73, align 8
  %75 = load i8*, i8** %16, align 8
  %76 = load i8*, i8** %15, align 8
  %77 = call i32 %74(i8* %75, i8* %76)
  %78 = load i8*, i8** %16, align 8
  %79 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %80 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = call i32 @MIN(i32 8, i32 %81)
  %83 = call i32 @memcpy(i64* %13, i8* %78, i32 %82)
  %84 = load i64, i64* %13, align 8
  %85 = urem i64 %84, 4294967295
  store i64 %85, i64* %13, align 8
  %86 = load i8*, i8** %16, align 8
  %87 = call i32 @efree(i8* %86)
  %88 = load i8*, i8** %15, align 8
  %89 = call i32 @efree(i8* %88)
  br label %109

90:                                               ; preds = %37, %32
  store i32 0, i32* %12, align 4
  br label %91

91:                                               ; preds = %105, %90
  %92 = load i32, i32* %12, align 4
  %93 = load i32*, i32** %11, align 8
  %94 = call i32 @ZSTR_LEN(i32* %93)
  %95 = icmp slt i32 %92, %94
  br i1 %95, label %96, label %108

96:                                               ; preds = %91
  %97 = load i64, i64* %13, align 8
  %98 = load i32*, i32** %11, align 8
  %99 = call i32* @ZSTR_VAL(i32* %98)
  %100 = load i32, i32* %12, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds i32, i32* %99, i64 %101
  %103 = load i32, i32* %102, align 4
  %104 = call i32 @CRC32(i64 %97, i32 %103)
  br label %105

105:                                              ; preds = %96
  %106 = load i32, i32* %12, align 4
  %107 = add nsw i32 %106, 1
  store i32 %107, i32* %12, align 4
  br label %91

108:                                              ; preds = %91
  br label %109

109:                                              ; preds = %108, %48
  %110 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %111 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %110, i32 0, i32 2
  %112 = load %struct.TYPE_10__*, %struct.TYPE_10__** %111, align 8
  %113 = icmp ne %struct.TYPE_10__* %112, null
  br i1 %113, label %114, label %167

114:                                              ; preds = %109
  store i32 0, i32* %17, align 4
  %115 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %116 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %115, i32 0, i32 2
  %117 = load %struct.TYPE_10__*, %struct.TYPE_10__** %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 8
  store i32 %119, i32* %18, align 4
  br label %120

120:                                              ; preds = %146, %114
  %121 = load i32, i32* %17, align 4
  %122 = load i32, i32* %18, align 4
  %123 = icmp slt i32 %121, %122
  br i1 %123, label %124, label %147

124:                                              ; preds = %120
  %125 = load i32, i32* %17, align 4
  %126 = load i32, i32* %18, align 4
  %127 = add nsw i32 %125, %126
  %128 = sdiv i32 %127, 2
  store i32 %128, i32* %12, align 4
  %129 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %130 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %129, i32 0, i32 2
  %131 = load %struct.TYPE_10__*, %struct.TYPE_10__** %130, align 8
  %132 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %131, i32 0, i32 1
  %133 = load %struct.TYPE_9__*, %struct.TYPE_9__** %132, align 8
  %134 = load i32, i32* %12, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %133, i64 %135
  %137 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %136, i32 0, i32 0
  %138 = load i64, i64* %137, align 8
  %139 = load i64, i64* %13, align 8
  %140 = icmp ult i64 %138, %139
  br i1 %140, label %141, label %144

141:                                              ; preds = %124
  %142 = load i32, i32* %12, align 4
  %143 = add nsw i32 %142, 1
  store i32 %143, i32* %17, align 4
  br label %146

144:                                              ; preds = %124
  %145 = load i32, i32* %12, align 4
  store i32 %145, i32* %18, align 4
  br label %146

146:                                              ; preds = %144, %141
  br label %120

147:                                              ; preds = %120
  %148 = load i32, i32* %18, align 4
  %149 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %150 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %149, i32 0, i32 2
  %151 = load %struct.TYPE_10__*, %struct.TYPE_10__** %150, align 8
  %152 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 8
  %154 = icmp eq i32 %148, %153
  br i1 %154, label %155, label %156

155:                                              ; preds = %147
  store i32 0, i32* %18, align 4
  br label %156

156:                                              ; preds = %155, %147
  %157 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %158 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %157, i32 0, i32 2
  %159 = load %struct.TYPE_10__*, %struct.TYPE_10__** %158, align 8
  %160 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %159, i32 0, i32 1
  %161 = load %struct.TYPE_9__*, %struct.TYPE_9__** %160, align 8
  %162 = load i32, i32* %18, align 4
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %161, i64 %163
  %165 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %164, i32 0, i32 1
  %166 = load i32, i32* %165, align 8
  store i32 %166, i32* %10, align 4
  br label %176

167:                                              ; preds = %109
  %168 = load i64, i64* %13, align 8
  %169 = xor i64 %168, 4294967295
  %170 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %171 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %170, i32 0, i32 0
  %172 = load i64, i64* %171, align 8
  %173 = mul i64 %169, %172
  %174 = udiv i64 %173, 4294967295
  %175 = trunc i64 %174 to i32
  store i32 %175, i32* %10, align 4
  br label %176

176:                                              ; preds = %167, %156
  br label %195

177:                                              ; preds = %25
  %178 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %179 = load i8*, i8** %7, align 8
  %180 = load i32, i32* %8, align 4
  %181 = call i32 @ra_call_distributor(%struct.TYPE_12__* %178, i8* %179, i32 %180)
  store i32 %181, i32* %10, align 4
  %182 = load i32, i32* %10, align 4
  %183 = icmp slt i32 %182, 0
  br i1 %183, label %191, label %184

184:                                              ; preds = %177
  %185 = load i32, i32* %10, align 4
  %186 = sext i32 %185 to i64
  %187 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %188 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %187, i32 0, i32 0
  %189 = load i64, i64* %188, align 8
  %190 = icmp uge i64 %186, %189
  br i1 %190, label %191, label %194

191:                                              ; preds = %184, %177
  %192 = load i32*, i32** %11, align 8
  %193 = call i32 @zend_string_release(i32* %192)
  store i32* null, i32** %5, align 8
  br label %210

194:                                              ; preds = %184
  br label %195

195:                                              ; preds = %194, %176
  %196 = load i32*, i32** %11, align 8
  %197 = call i32 @zend_string_release(i32* %196)
  %198 = load i32*, i32** %9, align 8
  %199 = icmp ne i32* %198, null
  br i1 %199, label %200, label %203

200:                                              ; preds = %195
  %201 = load i32, i32* %10, align 4
  %202 = load i32*, i32** %9, align 8
  store i32 %201, i32* %202, align 4
  br label %203

203:                                              ; preds = %200, %195
  %204 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %205 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %204, i32 0, i32 1
  %206 = load i32*, i32** %205, align 8
  %207 = load i32, i32* %10, align 4
  %208 = sext i32 %207 to i64
  %209 = getelementptr inbounds i32, i32* %206, i64 %208
  store i32* %209, i32** %5, align 8
  br label %210

210:                                              ; preds = %203, %191, %24
  %211 = load i32*, i32** %5, align 8
  ret i32* %211
}

declare dso_local i32* @ra_extract_key(%struct.TYPE_12__*, i8*, i32) #1

declare dso_local i64 @Z_TYPE(i32) #1

declare dso_local %struct.TYPE_11__* @php_hash_fetch_ops(i32*, i32) #1

declare dso_local i32* @ZSTR_VAL(i32*) #1

declare dso_local i32 @ZSTR_LEN(i32*) #1

declare dso_local i8* @emalloc(i32) #1

declare dso_local i32 @memcpy(i64*, i8*, i32) #1

declare dso_local i32 @MIN(i32, i32) #1

declare dso_local i32 @efree(i8*) #1

declare dso_local i32 @CRC32(i64, i32) #1

declare dso_local i32 @ra_call_distributor(%struct.TYPE_12__*, i8*, i32) #1

declare dso_local i32 @zend_string_release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
