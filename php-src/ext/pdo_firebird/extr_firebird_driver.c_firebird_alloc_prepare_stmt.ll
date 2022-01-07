; ModuleID = '/home/carl/AnghaBench/php-src/ext/pdo_firebird/extr_firebird_driver.c_firebird_alloc_prepare_stmt.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/pdo_firebird/extr_firebird_driver.c_firebird_alloc_prepare_stmt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i64, i32, i64 }
%struct.TYPE_6__ = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [6 x i8] c"01004\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_7__*, i8*, i64, i32*, i32*, i32*)* @firebird_alloc_prepare_stmt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @firebird_alloc_prepare_stmt(%struct.TYPE_7__* %0, i8* %1, i64 %2, i32* %3, i32* %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_7__*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca %struct.TYPE_6__*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8, align 1
  %18 = alloca i8, align 1
  %19 = alloca [64 x i8], align 16
  %20 = alloca i8*, align 8
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  %23 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %8, align 8
  store i8* %1, i8** %9, align 8
  store i64 %2, i64* %10, align 8
  store i32* %3, i32** %11, align 8
  store i32* %4, i32** %12, align 8
  store i32* %5, i32** %13, align 8
  %24 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 3
  %26 = load i64, i64* %25, align 8
  %27 = inttoptr i64 %26 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %27, %struct.TYPE_6__** %14, align 8
  store i64 -1, i64* %22, align 8
  %28 = load i64, i64* %10, align 8
  %29 = icmp ugt i64 %28, 65536
  br i1 %29, label %30, label %35

30:                                               ; preds = %6
  %31 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @strcpy(i32 %33, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %7, align 4
  br label %233

35:                                               ; preds = %6
  %36 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %53

40:                                               ; preds = %35
  %41 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %53, label %45

45:                                               ; preds = %40
  %46 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %47 = call i32 @firebird_handle_begin(%struct.TYPE_7__* %46)
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %50, label %49

49:                                               ; preds = %45
  store i32 0, i32* %7, align 4
  br label %233

50:                                               ; preds = %45
  %51 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i32 0, i32 0
  store i32 1, i32* %52, align 8
  br label %53

53:                                               ; preds = %50, %40, %35
  %54 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 3
  %59 = load i32*, i32** %12, align 8
  %60 = call i64 @isc_dsql_allocate_statement(i32 %56, i32* %58, i32* %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %65

62:                                               ; preds = %53
  %63 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %64 = call i32 @RECORD_ERROR(%struct.TYPE_7__* %63)
  store i32 0, i32* %7, align 4
  br label %233

65:                                               ; preds = %53
  %66 = load i64, i64* %10, align 8
  %67 = add i64 %66, 1
  %68 = call i8* @emalloc(i64 %67)
  store i8* %68, i8** %15, align 8
  store i8* %68, i8** %16, align 8
  store i8 0, i8* %18, align 1
  store i8 0, i8* %17, align 1
  store i64 0, i64* %21, align 8
  br label %69

69:                                               ; preds = %208, %65
  %70 = load i64, i64* %21, align 8
  %71 = load i64, i64* %10, align 8
  %72 = icmp ule i64 %70, %71
  br i1 %72, label %73, label %211

73:                                               ; preds = %69
  %74 = load i8*, i8** %9, align 8
  %75 = load i64, i64* %21, align 8
  %76 = getelementptr inbounds i8, i8* %74, i64 %75
  %77 = load i8, i8* %76, align 1
  %78 = sext i8 %77 to i32
  %79 = icmp eq i32 %78, 39
  %80 = zext i1 %79 to i32
  %81 = load i8, i8* %17, align 1
  %82 = sext i8 %81 to i32
  %83 = xor i32 %82, %80
  %84 = trunc i32 %83 to i8
  store i8 %84, i8* %17, align 1
  %85 = icmp ne i8 %84, 0
  br i1 %85, label %201, label %86

86:                                               ; preds = %73
  %87 = load i8, i8* %18, align 1
  %88 = icmp ne i8 %87, 0
  br i1 %88, label %109, label %89

89:                                               ; preds = %86
  %90 = load i8*, i8** %9, align 8
  %91 = load i64, i64* %21, align 8
  %92 = getelementptr inbounds i8, i8* %90, i64 %91
  %93 = load i8, i8* %92, align 1
  %94 = sext i8 %93 to i32
  switch i32 %94, label %108 [
    i32 58, label %95
    i32 63, label %103
  ]

95:                                               ; preds = %89
  store i8 1, i8* %18, align 1
  %96 = getelementptr inbounds [64 x i8], [64 x i8]* %19, i64 0, i64 0
  store i8* %96, i8** %20, align 8
  %97 = load i8*, i8** %9, align 8
  %98 = load i64, i64* %21, align 8
  %99 = getelementptr inbounds i8, i8* %97, i64 %98
  %100 = load i8, i8* %99, align 1
  %101 = load i8*, i8** %20, align 8
  %102 = getelementptr inbounds i8, i8* %101, i32 1
  store i8* %102, i8** %20, align 8
  store i8 %100, i8* %101, align 1
  br label %103

103:                                              ; preds = %89, %95
  %104 = load i8*, i8** %15, align 8
  %105 = getelementptr inbounds i8, i8* %104, i32 1
  store i8* %105, i8** %15, align 8
  store i8 63, i8* %104, align 1
  %106 = load i64, i64* %22, align 8
  %107 = add i64 %106, 1
  store i64 %107, i64* %22, align 8
  br label %208

108:                                              ; preds = %89
  br label %200

109:                                              ; preds = %86
  %110 = load i8*, i8** %9, align 8
  %111 = load i64, i64* %21, align 8
  %112 = getelementptr inbounds i8, i8* %110, i64 %111
  %113 = load i8, i8* %112, align 1
  %114 = sext i8 %113 to i32
  %115 = icmp sge i32 %114, 65
  br i1 %115, label %116, label %123

116:                                              ; preds = %109
  %117 = load i8*, i8** %9, align 8
  %118 = load i64, i64* %21, align 8
  %119 = getelementptr inbounds i8, i8* %117, i64 %118
  %120 = load i8, i8* %119, align 1
  %121 = sext i8 %120 to i32
  %122 = icmp sle i32 %121, 90
  br i1 %122, label %165, label %123

123:                                              ; preds = %116, %109
  %124 = load i8*, i8** %9, align 8
  %125 = load i64, i64* %21, align 8
  %126 = getelementptr inbounds i8, i8* %124, i64 %125
  %127 = load i8, i8* %126, align 1
  %128 = sext i8 %127 to i32
  %129 = icmp sge i32 %128, 97
  br i1 %129, label %130, label %137

130:                                              ; preds = %123
  %131 = load i8*, i8** %9, align 8
  %132 = load i64, i64* %21, align 8
  %133 = getelementptr inbounds i8, i8* %131, i64 %132
  %134 = load i8, i8* %133, align 1
  %135 = sext i8 %134 to i32
  %136 = icmp sle i32 %135, 122
  br i1 %136, label %165, label %137

137:                                              ; preds = %130, %123
  %138 = load i8*, i8** %9, align 8
  %139 = load i64, i64* %21, align 8
  %140 = getelementptr inbounds i8, i8* %138, i64 %139
  %141 = load i8, i8* %140, align 1
  %142 = sext i8 %141 to i32
  %143 = icmp sge i32 %142, 48
  br i1 %143, label %144, label %151

144:                                              ; preds = %137
  %145 = load i8*, i8** %9, align 8
  %146 = load i64, i64* %21, align 8
  %147 = getelementptr inbounds i8, i8* %145, i64 %146
  %148 = load i8, i8* %147, align 1
  %149 = sext i8 %148 to i32
  %150 = icmp sle i32 %149, 57
  br i1 %150, label %165, label %151

151:                                              ; preds = %144, %137
  %152 = load i8*, i8** %9, align 8
  %153 = load i64, i64* %21, align 8
  %154 = getelementptr inbounds i8, i8* %152, i64 %153
  %155 = load i8, i8* %154, align 1
  %156 = sext i8 %155 to i32
  %157 = icmp eq i32 %156, 95
  br i1 %157, label %165, label %158

158:                                              ; preds = %151
  %159 = load i8*, i8** %9, align 8
  %160 = load i64, i64* %21, align 8
  %161 = getelementptr inbounds i8, i8* %159, i64 %160
  %162 = load i8, i8* %161, align 1
  %163 = sext i8 %162 to i32
  %164 = icmp eq i32 %163, 45
  br label %165

165:                                              ; preds = %158, %151, %144, %130, %116
  %166 = phi i1 [ true, %151 ], [ true, %144 ], [ true, %130 ], [ true, %116 ], [ %164, %158 ]
  %167 = zext i1 %166 to i32
  %168 = load i8, i8* %18, align 1
  %169 = sext i8 %168 to i32
  %170 = and i32 %169, %167
  %171 = trunc i32 %170 to i8
  store i8 %171, i8* %18, align 1
  %172 = icmp ne i8 %171, 0
  br i1 %172, label %173, label %180

173:                                              ; preds = %165
  %174 = load i8*, i8** %9, align 8
  %175 = load i64, i64* %21, align 8
  %176 = getelementptr inbounds i8, i8* %174, i64 %175
  %177 = load i8, i8* %176, align 1
  %178 = load i8*, i8** %20, align 8
  %179 = getelementptr inbounds i8, i8* %178, i32 1
  store i8* %179, i8** %20, align 8
  store i8 %177, i8* %178, align 1
  br label %208

180:                                              ; preds = %165
  %181 = load i8*, i8** %20, align 8
  %182 = getelementptr inbounds i8, i8* %181, i32 1
  store i8* %182, i8** %20, align 8
  store i8 0, i8* %181, align 1
  %183 = load i32*, i32** %13, align 8
  %184 = icmp ne i32* %183, null
  br i1 %184, label %185, label %198

185:                                              ; preds = %180
  %186 = load i64, i64* %22, align 8
  %187 = call i32 @ZVAL_LONG(i32* %23, i64 %186)
  %188 = load i32*, i32** %13, align 8
  %189 = getelementptr inbounds [64 x i8], [64 x i8]* %19, i64 0, i64 0
  %190 = load i8*, i8** %20, align 8
  %191 = getelementptr inbounds [64 x i8], [64 x i8]* %19, i64 0, i64 0
  %192 = ptrtoint i8* %190 to i64
  %193 = ptrtoint i8* %191 to i64
  %194 = sub i64 %192, %193
  %195 = sub nsw i64 %194, 1
  %196 = trunc i64 %195 to i32
  %197 = call i32 @zend_hash_str_update(i32* %188, i8* %189, i32 %196, i32* %23)
  br label %198

198:                                              ; preds = %185, %180
  br label %199

199:                                              ; preds = %198
  br label %200

200:                                              ; preds = %199, %108
  br label %201

201:                                              ; preds = %200, %73
  %202 = load i8*, i8** %9, align 8
  %203 = load i64, i64* %21, align 8
  %204 = getelementptr inbounds i8, i8* %202, i64 %203
  %205 = load i8, i8* %204, align 1
  %206 = load i8*, i8** %15, align 8
  %207 = getelementptr inbounds i8, i8* %206, i32 1
  store i8* %207, i8** %15, align 8
  store i8 %205, i8* %206, align 1
  br label %208

208:                                              ; preds = %201, %173, %103
  %209 = load i64, i64* %21, align 8
  %210 = add i64 %209, 1
  store i64 %210, i64* %21, align 8
  br label %69

211:                                              ; preds = %69
  %212 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %213 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %212, i32 0, i32 2
  %214 = load i32, i32* %213, align 4
  %215 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %216 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %215, i32 0, i32 1
  %217 = load i32*, i32** %12, align 8
  %218 = load i8*, i8** %16, align 8
  %219 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %220 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %219, i32 0, i32 0
  %221 = load i32, i32* %220, align 4
  %222 = load i32*, i32** %11, align 8
  %223 = call i64 @isc_dsql_prepare(i32 %214, i32* %216, i32* %217, i32 0, i8* %218, i32 %221, i32* %222)
  %224 = icmp ne i64 %223, 0
  br i1 %224, label %225, label %230

225:                                              ; preds = %211
  %226 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %227 = call i32 @RECORD_ERROR(%struct.TYPE_7__* %226)
  %228 = load i8*, i8** %16, align 8
  %229 = call i32 @efree(i8* %228)
  store i32 0, i32* %7, align 4
  br label %233

230:                                              ; preds = %211
  %231 = load i8*, i8** %16, align 8
  %232 = call i32 @efree(i8* %231)
  store i32 1, i32* %7, align 4
  br label %233

233:                                              ; preds = %230, %225, %62, %49, %30
  %234 = load i32, i32* %7, align 4
  ret i32 %234
}

declare dso_local i32 @strcpy(i32, i8*) #1

declare dso_local i32 @firebird_handle_begin(%struct.TYPE_7__*) #1

declare dso_local i64 @isc_dsql_allocate_statement(i32, i32*, i32*) #1

declare dso_local i32 @RECORD_ERROR(%struct.TYPE_7__*) #1

declare dso_local i8* @emalloc(i64) #1

declare dso_local i32 @ZVAL_LONG(i32*, i64) #1

declare dso_local i32 @zend_hash_str_update(i32*, i8*, i32, i32*) #1

declare dso_local i64 @isc_dsql_prepare(i32, i32*, i32*, i32, i8*, i32, i32*) #1

declare dso_local i32 @efree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
