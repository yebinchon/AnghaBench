; ModuleID = '/home/carl/AnghaBench/php-src/ext/mysqlnd/extr_mysqlnd_ps_codec.c_mysqlnd_stmt_execute_store_param_values.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/mysqlnd/extr_mysqlnd_ps_codec.c_mysqlnd_stmt_execute_store_param_values.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i32, i32 }

@IS_NULL = common dso_local global i64 0, align 8
@IS_STRING = common dso_local global i64 0, align 8
@MYSQLND_PARAM_BIND_BLOB_USED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_5__*, i32*, i32*, i32**, i64)* @mysqlnd_stmt_execute_store_param_values to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mysqlnd_stmt_execute_store_param_values(%struct.TYPE_5__* %0, i32* %1, i32* %2, i32** %3, i64 %4) #0 {
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32**, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i64, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32** %3, i32*** %9, align 8
  store i64 %4, i64* %10, align 8
  store i32 0, i32* %11, align 4
  br label %15

15:                                               ; preds = %200, %5
  %16 = load i32, i32* %11, align 4
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = icmp ult i32 %16, %19
  br i1 %20, label %21, label %203

21:                                               ; preds = %15
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 1
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %23, align 8
  %25 = load i32, i32* %11, align 4
  %26 = zext i32 %25 to i64
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i64 %26
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 2
  store i32* %28, i32** %13, align 8
  %29 = load i32*, i32** %13, align 8
  %30 = call i32 @ZVAL_DEREF(i32* %29)
  %31 = load i32*, i32** %7, align 8
  %32 = icmp ne i32* %31, null
  br i1 %32, label %33, label %46

33:                                               ; preds = %21
  %34 = load i32*, i32** %7, align 8
  %35 = load i32, i32* %11, align 4
  %36 = zext i32 %35 to i64
  %37 = getelementptr inbounds i32, i32* %34, i64 %36
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @Z_ISUNDEF(i32 %38)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %46, label %41

41:                                               ; preds = %33
  %42 = load i32*, i32** %7, align 8
  %43 = load i32, i32* %11, align 4
  %44 = zext i32 %43 to i64
  %45 = getelementptr inbounds i32, i32* %42, i64 %44
  br label %48

46:                                               ; preds = %33, %21
  %47 = load i32*, i32** %13, align 8
  br label %48

48:                                               ; preds = %46, %41
  %49 = phi i32* [ %45, %41 ], [ %47, %46 ]
  store i32* %49, i32** %12, align 8
  %50 = load i32*, i32** %13, align 8
  %51 = call i32 @Z_ISUNDEF_P(i32* %50)
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %71, label %53

53:                                               ; preds = %48
  %54 = load i32*, i32** %12, align 8
  %55 = call i64 @Z_TYPE_P(i32* %54)
  %56 = load i64, i64* @IS_NULL, align 8
  %57 = icmp eq i64 %55, %56
  br i1 %57, label %58, label %71

58:                                               ; preds = %53
  %59 = load i32, i32* %11, align 4
  %60 = and i32 %59, 7
  %61 = shl i32 1, %60
  %62 = load i32*, i32** %8, align 8
  %63 = load i64, i64* %10, align 8
  %64 = getelementptr inbounds i32, i32* %62, i64 %63
  %65 = load i32, i32* %11, align 4
  %66 = udiv i32 %65, 8
  %67 = zext i32 %66 to i64
  %68 = getelementptr inbounds i32, i32* %64, i64 %67
  %69 = load i32, i32* %68, align 4
  %70 = or i32 %69, %61
  store i32 %70, i32* %68, align 4
  br label %199

71:                                               ; preds = %53, %48
  %72 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %72, i32 0, i32 1
  %74 = load %struct.TYPE_4__*, %struct.TYPE_4__** %73, align 8
  %75 = load i32, i32* %11, align 4
  %76 = zext i32 %75 to i64
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i64 %76
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  switch i32 %79, label %185 [
    i32 133, label %80
    i32 131, label %91
    i32 132, label %106
    i32 129, label %121
    i32 130, label %136
    i32 128, label %166
  ]

80:                                               ; preds = %71
  %81 = load i32*, i32** %12, align 8
  %82 = call i32 @convert_to_double_ex(i32* %81)
  %83 = load i32**, i32*** %9, align 8
  %84 = load i32*, i32** %83, align 8
  %85 = load i32*, i32** %12, align 8
  %86 = call i32 @Z_DVAL_P(i32* %85)
  %87 = call i32 @float8store(i32* %84, i32 %86)
  %88 = load i32**, i32*** %9, align 8
  %89 = load i32*, i32** %88, align 8
  %90 = getelementptr inbounds i32, i32* %89, i64 8
  store i32* %90, i32** %88, align 8
  br label %198

91:                                               ; preds = %71
  %92 = load i32*, i32** %12, align 8
  %93 = call i64 @Z_TYPE_P(i32* %92)
  %94 = load i64, i64* @IS_STRING, align 8
  %95 = icmp eq i64 %93, %94
  br i1 %95, label %96, label %97

96:                                               ; preds = %91
  br label %167

97:                                               ; preds = %91
  %98 = load i32**, i32*** %9, align 8
  %99 = load i32*, i32** %98, align 8
  %100 = load i32*, i32** %12, align 8
  %101 = call i32 @Z_LVAL_P(i32* %100)
  %102 = call i32 @int8store(i32* %99, i32 %101)
  %103 = load i32**, i32*** %9, align 8
  %104 = load i32*, i32** %103, align 8
  %105 = getelementptr inbounds i32, i32* %104, i64 8
  store i32* %105, i32** %103, align 8
  br label %198

106:                                              ; preds = %71
  %107 = load i32*, i32** %12, align 8
  %108 = call i64 @Z_TYPE_P(i32* %107)
  %109 = load i64, i64* @IS_STRING, align 8
  %110 = icmp eq i64 %108, %109
  br i1 %110, label %111, label %112

111:                                              ; preds = %106
  br label %167

112:                                              ; preds = %106
  %113 = load i32**, i32*** %9, align 8
  %114 = load i32*, i32** %113, align 8
  %115 = load i32*, i32** %12, align 8
  %116 = call i32 @Z_LVAL_P(i32* %115)
  %117 = call i32 @int4store(i32* %114, i32 %116)
  %118 = load i32**, i32*** %9, align 8
  %119 = load i32*, i32** %118, align 8
  %120 = getelementptr inbounds i32, i32* %119, i64 4
  store i32* %120, i32** %118, align 8
  br label %198

121:                                              ; preds = %71
  %122 = load i32*, i32** %12, align 8
  %123 = call i64 @Z_TYPE_P(i32* %122)
  %124 = load i64, i64* @IS_STRING, align 8
  %125 = icmp eq i64 %123, %124
  br i1 %125, label %126, label %127

126:                                              ; preds = %121
  br label %167

127:                                              ; preds = %121
  %128 = load i32**, i32*** %9, align 8
  %129 = load i32*, i32** %128, align 8
  %130 = load i32*, i32** %12, align 8
  %131 = call i32 @Z_LVAL_P(i32* %130)
  %132 = call i32 @int1store(i32* %129, i32 %131)
  %133 = load i32**, i32*** %9, align 8
  %134 = load i32*, i32** %133, align 8
  %135 = getelementptr inbounds i32, i32* %134, i32 1
  store i32* %135, i32** %133, align 8
  br label %198

136:                                              ; preds = %71
  %137 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %138 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %137, i32 0, i32 1
  %139 = load %struct.TYPE_4__*, %struct.TYPE_4__** %138, align 8
  %140 = load i32, i32* %11, align 4
  %141 = zext i32 %140 to i64
  %142 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %139, i64 %141
  %143 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %142, i32 0, i32 1
  %144 = load i32, i32* %143, align 4
  %145 = load i32, i32* @MYSQLND_PARAM_BIND_BLOB_USED, align 4
  %146 = and i32 %144, %145
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %160

148:                                              ; preds = %136
  %149 = load i32, i32* @MYSQLND_PARAM_BIND_BLOB_USED, align 4
  %150 = xor i32 %149, -1
  %151 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %152 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %151, i32 0, i32 1
  %153 = load %struct.TYPE_4__*, %struct.TYPE_4__** %152, align 8
  %154 = load i32, i32* %11, align 4
  %155 = zext i32 %154 to i64
  %156 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %153, i64 %155
  %157 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %156, i32 0, i32 1
  %158 = load i32, i32* %157, align 4
  %159 = and i32 %158, %150
  store i32 %159, i32* %157, align 4
  br label %165

160:                                              ; preds = %136
  %161 = load i32**, i32*** %9, align 8
  %162 = load i32*, i32** %161, align 8
  %163 = call i32* @php_mysqlnd_net_store_length(i32* %162, i64 0)
  %164 = load i32**, i32*** %9, align 8
  store i32* %163, i32** %164, align 8
  br label %165

165:                                              ; preds = %160, %148
  br label %198

166:                                              ; preds = %71
  br label %167

167:                                              ; preds = %166, %126, %111, %96
  %168 = load i32*, i32** %12, align 8
  %169 = call i64 @Z_STRLEN_P(i32* %168)
  store i64 %169, i64* %14, align 8
  %170 = load i32**, i32*** %9, align 8
  %171 = load i32*, i32** %170, align 8
  %172 = load i64, i64* %14, align 8
  %173 = call i32* @php_mysqlnd_net_store_length(i32* %171, i64 %172)
  %174 = load i32**, i32*** %9, align 8
  store i32* %173, i32** %174, align 8
  %175 = load i32**, i32*** %9, align 8
  %176 = load i32*, i32** %175, align 8
  %177 = load i32*, i32** %12, align 8
  %178 = call i32 @Z_STRVAL_P(i32* %177)
  %179 = load i64, i64* %14, align 8
  %180 = call i32 @memcpy(i32* %176, i32 %178, i64 %179)
  %181 = load i64, i64* %14, align 8
  %182 = load i32**, i32*** %9, align 8
  %183 = load i32*, i32** %182, align 8
  %184 = getelementptr inbounds i32, i32* %183, i64 %181
  store i32* %184, i32** %182, align 8
  br label %198

185:                                              ; preds = %71
  %186 = load i32, i32* %11, align 4
  %187 = and i32 %186, 7
  %188 = shl i32 1, %187
  %189 = load i32*, i32** %8, align 8
  %190 = load i64, i64* %10, align 8
  %191 = getelementptr inbounds i32, i32* %189, i64 %190
  %192 = load i32, i32* %11, align 4
  %193 = udiv i32 %192, 8
  %194 = zext i32 %193 to i64
  %195 = getelementptr inbounds i32, i32* %191, i64 %194
  %196 = load i32, i32* %195, align 4
  %197 = or i32 %196, %188
  store i32 %197, i32* %195, align 4
  br label %198

198:                                              ; preds = %185, %167, %165, %127, %112, %97, %80
  br label %199

199:                                              ; preds = %198, %58
  br label %200

200:                                              ; preds = %199
  %201 = load i32, i32* %11, align 4
  %202 = add i32 %201, 1
  store i32 %202, i32* %11, align 4
  br label %15

203:                                              ; preds = %15
  ret void
}

declare dso_local i32 @ZVAL_DEREF(i32*) #1

declare dso_local i32 @Z_ISUNDEF(i32) #1

declare dso_local i32 @Z_ISUNDEF_P(i32*) #1

declare dso_local i64 @Z_TYPE_P(i32*) #1

declare dso_local i32 @convert_to_double_ex(i32*) #1

declare dso_local i32 @float8store(i32*, i32) #1

declare dso_local i32 @Z_DVAL_P(i32*) #1

declare dso_local i32 @int8store(i32*, i32) #1

declare dso_local i32 @Z_LVAL_P(i32*) #1

declare dso_local i32 @int4store(i32*, i32) #1

declare dso_local i32 @int1store(i32*, i32) #1

declare dso_local i32* @php_mysqlnd_net_store_length(i32*, i64) #1

declare dso_local i64 @Z_STRLEN_P(i32*) #1

declare dso_local i32 @memcpy(i32*, i32, i64) #1

declare dso_local i32 @Z_STRVAL_P(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
