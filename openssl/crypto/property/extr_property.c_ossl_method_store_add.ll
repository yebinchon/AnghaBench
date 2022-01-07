; ModuleID = '/home/carl/AnghaBench/openssl/crypto/property/extr_property.c_ossl_method_store_add.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/property/extr_property.c_ossl_method_store_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { i32 }
%struct.TYPE_21__ = type { i32, i32*, i32* }
%struct.TYPE_20__ = type { void (i8*)*, i64, i32*, i8* }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@query_hash = common dso_local global i32 0, align 4
@query_cmp = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ossl_method_store_add(%struct.TYPE_19__* %0, i32* %1, i32 %2, i8* %3, i8* %4, i32 (i8*)* %5, void (i8*)* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_19__*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32 (i8*)*, align 8
  %15 = alloca void (i8*)*, align 8
  %16 = alloca %struct.TYPE_21__*, align 8
  %17 = alloca %struct.TYPE_20__*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca %struct.TYPE_20__*, align 8
  store %struct.TYPE_19__* %0, %struct.TYPE_19__** %9, align 8
  store i32* %1, i32** %10, align 8
  store i32 %2, i32* %11, align 4
  store i8* %3, i8** %12, align 8
  store i8* %4, i8** %13, align 8
  store i32 (i8*)* %5, i32 (i8*)** %14, align 8
  store void (i8*)* %6, void (i8*)** %15, align 8
  store %struct.TYPE_21__* null, %struct.TYPE_21__** %16, align 8
  store i32 0, i32* %18, align 4
  %21 = load i32, i32* %11, align 4
  %22 = icmp sle i32 %21, 0
  br i1 %22, label %29, label %23

23:                                               ; preds = %7
  %24 = load i8*, i8** %13, align 8
  %25 = icmp eq i8* %24, null
  br i1 %25, label %29, label %26

26:                                               ; preds = %23
  %27 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %28 = icmp eq %struct.TYPE_19__* %27, null
  br i1 %28, label %29, label %30

29:                                               ; preds = %26, %23, %7
  store i32 0, i32* %8, align 4
  br label %196

30:                                               ; preds = %26
  %31 = load i8*, i8** %12, align 8
  %32 = icmp eq i8* %31, null
  br i1 %32, label %33, label %34

33:                                               ; preds = %30
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8** %12, align 8
  br label %34

34:                                               ; preds = %33, %30
  %35 = call %struct.TYPE_20__* @OPENSSL_malloc(i32 32)
  store %struct.TYPE_20__* %35, %struct.TYPE_20__** %17, align 8
  %36 = load %struct.TYPE_20__*, %struct.TYPE_20__** %17, align 8
  %37 = icmp eq %struct.TYPE_20__* %36, null
  br i1 %37, label %38, label %39

38:                                               ; preds = %34
  store i32 0, i32* %8, align 4
  br label %196

39:                                               ; preds = %34
  %40 = load i32 (i8*)*, i32 (i8*)** %14, align 8
  %41 = icmp ne i32 (i8*)* %40, null
  br i1 %41, label %42, label %50

42:                                               ; preds = %39
  %43 = load i32 (i8*)*, i32 (i8*)** %14, align 8
  %44 = load i8*, i8** %13, align 8
  %45 = call i32 %43(i8* %44)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %50, label %47

47:                                               ; preds = %42
  %48 = load %struct.TYPE_20__*, %struct.TYPE_20__** %17, align 8
  %49 = call i32 @OPENSSL_free(%struct.TYPE_20__* %48)
  store i32 0, i32* %8, align 4
  br label %196

50:                                               ; preds = %42, %39
  %51 = load i32*, i32** %10, align 8
  %52 = load %struct.TYPE_20__*, %struct.TYPE_20__** %17, align 8
  %53 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %52, i32 0, i32 2
  store i32* %51, i32** %53, align 8
  %54 = load i8*, i8** %13, align 8
  %55 = load %struct.TYPE_20__*, %struct.TYPE_20__** %17, align 8
  %56 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %55, i32 0, i32 3
  store i8* %54, i8** %56, align 8
  %57 = load void (i8*)*, void (i8*)** %15, align 8
  %58 = load %struct.TYPE_20__*, %struct.TYPE_20__** %17, align 8
  %59 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %58, i32 0, i32 0
  store void (i8*)* %57, void (i8*)** %59, align 8
  %60 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %61 = call i32 @ossl_property_write_lock(%struct.TYPE_19__* %60)
  %62 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %63 = load i32, i32* %11, align 4
  %64 = call i32 @ossl_method_cache_flush(%struct.TYPE_19__* %62, i32 %63)
  %65 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %66 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load i8*, i8** %12, align 8
  %69 = call i32* @ossl_prop_defn_get(i32 %67, i8* %68)
  %70 = ptrtoint i32* %69 to i64
  %71 = load %struct.TYPE_20__*, %struct.TYPE_20__** %17, align 8
  %72 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %71, i32 0, i32 1
  store i64 %70, i64* %72, align 8
  %73 = inttoptr i64 %70 to i8*
  %74 = icmp eq i8* %73, null
  br i1 %74, label %75, label %100

75:                                               ; preds = %50
  %76 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %77 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = load i8*, i8** %12, align 8
  %80 = call i32* @ossl_parse_property(i32 %78, i8* %79)
  %81 = ptrtoint i32* %80 to i64
  %82 = load %struct.TYPE_20__*, %struct.TYPE_20__** %17, align 8
  %83 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %82, i32 0, i32 1
  store i64 %81, i64* %83, align 8
  %84 = load %struct.TYPE_20__*, %struct.TYPE_20__** %17, align 8
  %85 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %84, i32 0, i32 1
  %86 = load i64, i64* %85, align 8
  %87 = inttoptr i64 %86 to i8*
  %88 = icmp eq i8* %87, null
  br i1 %88, label %89, label %90

89:                                               ; preds = %75
  br label %189

90:                                               ; preds = %75
  %91 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %92 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = load i8*, i8** %12, align 8
  %95 = load %struct.TYPE_20__*, %struct.TYPE_20__** %17, align 8
  %96 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %95, i32 0, i32 1
  %97 = load i64, i64* %96, align 8
  %98 = inttoptr i64 %97 to i32*
  %99 = call i32 @ossl_prop_defn_set(i32 %93, i8* %94, i32* %98)
  br label %100

100:                                              ; preds = %90, %50
  %101 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %102 = load i32, i32* %11, align 4
  %103 = call %struct.TYPE_21__* @ossl_method_store_retrieve(%struct.TYPE_19__* %101, i32 %102)
  store %struct.TYPE_21__* %103, %struct.TYPE_21__** %16, align 8
  %104 = load %struct.TYPE_21__*, %struct.TYPE_21__** %16, align 8
  %105 = icmp eq %struct.TYPE_21__* %104, null
  br i1 %105, label %106, label %130

106:                                              ; preds = %100
  %107 = call %struct.TYPE_21__* @OPENSSL_zalloc(i32 24)
  store %struct.TYPE_21__* %107, %struct.TYPE_21__** %16, align 8
  %108 = icmp eq %struct.TYPE_21__* %107, null
  br i1 %108, label %119, label %109

109:                                              ; preds = %106
  %110 = call i32* (...) @sk_IMPLEMENTATION_new_null()
  %111 = load %struct.TYPE_21__*, %struct.TYPE_21__** %16, align 8
  %112 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %111, i32 0, i32 1
  store i32* %110, i32** %112, align 8
  %113 = icmp eq i32* %110, null
  br i1 %113, label %119, label %114

114:                                              ; preds = %109
  %115 = call i32* @lh_QUERY_new(i32* @query_hash, i32* @query_cmp)
  %116 = load %struct.TYPE_21__*, %struct.TYPE_21__** %16, align 8
  %117 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %116, i32 0, i32 2
  store i32* %115, i32** %117, align 8
  %118 = icmp eq i32* %115, null
  br i1 %118, label %119, label %120

119:                                              ; preds = %114, %109, %106
  br label %189

120:                                              ; preds = %114
  %121 = load i32, i32* %11, align 4
  %122 = load %struct.TYPE_21__*, %struct.TYPE_21__** %16, align 8
  %123 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %122, i32 0, i32 0
  store i32 %121, i32* %123, align 8
  %124 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %125 = load %struct.TYPE_21__*, %struct.TYPE_21__** %16, align 8
  %126 = call i32 @ossl_method_store_insert(%struct.TYPE_19__* %124, %struct.TYPE_21__* %125)
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %129, label %128

128:                                              ; preds = %120
  br label %189

129:                                              ; preds = %120
  br label %130

130:                                              ; preds = %129, %100
  store i32 0, i32* %19, align 4
  br label %131

131:                                              ; preds = %161, %130
  %132 = load i32, i32* %19, align 4
  %133 = load %struct.TYPE_21__*, %struct.TYPE_21__** %16, align 8
  %134 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %133, i32 0, i32 1
  %135 = load i32*, i32** %134, align 8
  %136 = call i32 @sk_IMPLEMENTATION_num(i32* %135)
  %137 = icmp slt i32 %132, %136
  br i1 %137, label %138, label %164

138:                                              ; preds = %131
  %139 = load %struct.TYPE_21__*, %struct.TYPE_21__** %16, align 8
  %140 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %139, i32 0, i32 1
  %141 = load i32*, i32** %140, align 8
  %142 = load i32, i32* %19, align 4
  %143 = call %struct.TYPE_20__* @sk_IMPLEMENTATION_value(i32* %141, i32 %142)
  store %struct.TYPE_20__* %143, %struct.TYPE_20__** %20, align 8
  %144 = load %struct.TYPE_20__*, %struct.TYPE_20__** %20, align 8
  %145 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %144, i32 0, i32 2
  %146 = load i32*, i32** %145, align 8
  %147 = load %struct.TYPE_20__*, %struct.TYPE_20__** %17, align 8
  %148 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %147, i32 0, i32 2
  %149 = load i32*, i32** %148, align 8
  %150 = icmp eq i32* %146, %149
  br i1 %150, label %151, label %160

151:                                              ; preds = %138
  %152 = load %struct.TYPE_20__*, %struct.TYPE_20__** %20, align 8
  %153 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %152, i32 0, i32 1
  %154 = load i64, i64* %153, align 8
  %155 = load %struct.TYPE_20__*, %struct.TYPE_20__** %17, align 8
  %156 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %155, i32 0, i32 1
  %157 = load i64, i64* %156, align 8
  %158 = icmp eq i64 %154, %157
  br i1 %158, label %159, label %160

159:                                              ; preds = %151
  br label %164

160:                                              ; preds = %151, %138
  br label %161

161:                                              ; preds = %160
  %162 = load i32, i32* %19, align 4
  %163 = add nsw i32 %162, 1
  store i32 %163, i32* %19, align 4
  br label %131

164:                                              ; preds = %159, %131
  %165 = load i32, i32* %19, align 4
  %166 = load %struct.TYPE_21__*, %struct.TYPE_21__** %16, align 8
  %167 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %166, i32 0, i32 1
  %168 = load i32*, i32** %167, align 8
  %169 = call i32 @sk_IMPLEMENTATION_num(i32* %168)
  %170 = icmp eq i32 %165, %169
  br i1 %170, label %171, label %179

171:                                              ; preds = %164
  %172 = load %struct.TYPE_21__*, %struct.TYPE_21__** %16, align 8
  %173 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %172, i32 0, i32 1
  %174 = load i32*, i32** %173, align 8
  %175 = load %struct.TYPE_20__*, %struct.TYPE_20__** %17, align 8
  %176 = call i64 @sk_IMPLEMENTATION_push(i32* %174, %struct.TYPE_20__* %175)
  %177 = icmp ne i64 %176, 0
  br i1 %177, label %178, label %179

178:                                              ; preds = %171
  store i32 1, i32* %18, align 4
  br label %179

179:                                              ; preds = %178, %171, %164
  %180 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %181 = call i32 @ossl_property_unlock(%struct.TYPE_19__* %180)
  %182 = load i32, i32* %18, align 4
  %183 = icmp eq i32 %182, 0
  br i1 %183, label %184, label %187

184:                                              ; preds = %179
  %185 = load %struct.TYPE_20__*, %struct.TYPE_20__** %17, align 8
  %186 = call i32 @impl_free(%struct.TYPE_20__* %185)
  br label %187

187:                                              ; preds = %184, %179
  %188 = load i32, i32* %18, align 4
  store i32 %188, i32* %8, align 4
  br label %196

189:                                              ; preds = %128, %119, %89
  %190 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %191 = call i32 @ossl_property_unlock(%struct.TYPE_19__* %190)
  %192 = load %struct.TYPE_21__*, %struct.TYPE_21__** %16, align 8
  %193 = call i32 @alg_cleanup(i32 0, %struct.TYPE_21__* %192)
  %194 = load %struct.TYPE_20__*, %struct.TYPE_20__** %17, align 8
  %195 = call i32 @impl_free(%struct.TYPE_20__* %194)
  store i32 0, i32* %8, align 4
  br label %196

196:                                              ; preds = %189, %187, %47, %38, %29
  %197 = load i32, i32* %8, align 4
  ret i32 %197
}

declare dso_local %struct.TYPE_20__* @OPENSSL_malloc(i32) #1

declare dso_local i32 @OPENSSL_free(%struct.TYPE_20__*) #1

declare dso_local i32 @ossl_property_write_lock(%struct.TYPE_19__*) #1

declare dso_local i32 @ossl_method_cache_flush(%struct.TYPE_19__*, i32) #1

declare dso_local i32* @ossl_prop_defn_get(i32, i8*) #1

declare dso_local i32* @ossl_parse_property(i32, i8*) #1

declare dso_local i32 @ossl_prop_defn_set(i32, i8*, i32*) #1

declare dso_local %struct.TYPE_21__* @ossl_method_store_retrieve(%struct.TYPE_19__*, i32) #1

declare dso_local %struct.TYPE_21__* @OPENSSL_zalloc(i32) #1

declare dso_local i32* @sk_IMPLEMENTATION_new_null(...) #1

declare dso_local i32* @lh_QUERY_new(i32*, i32*) #1

declare dso_local i32 @ossl_method_store_insert(%struct.TYPE_19__*, %struct.TYPE_21__*) #1

declare dso_local i32 @sk_IMPLEMENTATION_num(i32*) #1

declare dso_local %struct.TYPE_20__* @sk_IMPLEMENTATION_value(i32*, i32) #1

declare dso_local i64 @sk_IMPLEMENTATION_push(i32*, %struct.TYPE_20__*) #1

declare dso_local i32 @ossl_property_unlock(%struct.TYPE_19__*) #1

declare dso_local i32 @impl_free(%struct.TYPE_20__*) #1

declare dso_local i32 @alg_cleanup(i32, %struct.TYPE_21__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
