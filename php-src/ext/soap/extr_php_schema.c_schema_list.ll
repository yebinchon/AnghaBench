; ModuleID = '/home/carl/AnghaBench/php-src/ext/soap/extr_php_schema.c_schema_list.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/soap/extr_php_schema.c_schema_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_28__ = type { i32 }
%struct.TYPE_26__ = type { %struct.TYPE_23__* }
%struct.TYPE_23__ = type { i64 }
%struct.TYPE_25__ = type { i32, %struct.TYPE_25__*, %struct.TYPE_25__*, i32, i32 }
%struct.TYPE_27__ = type { i8*, i32*, i8*, i32 }
%struct.TYPE_24__ = type { i64 }

@.str = private unnamed_addr constant [9 x i8] c"itemType\00", align 1
@delete_type = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [11 x i8] c"annotation\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"simpleType\00", align 1
@E_ERROR = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [66 x i8] c"Parsing Schema: element has both 'itemType' attribute and subtype\00", align 1
@MAX_LENGTH_OF_LONG = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [10 x i8] c"anonymous\00", align 1
@.str.5 = private unnamed_addr constant [40 x i8] c"Parsing Schema: unexpected <%s> in list\00", align 1
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_28__*, %struct.TYPE_26__*, %struct.TYPE_25__*, %struct.TYPE_27__*)* @schema_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @schema_list(%struct.TYPE_28__* %0, %struct.TYPE_26__* %1, %struct.TYPE_25__* %2, %struct.TYPE_27__* %3) #0 {
  %5 = alloca %struct.TYPE_28__*, align 8
  %6 = alloca %struct.TYPE_26__*, align 8
  %7 = alloca %struct.TYPE_25__*, align 8
  %8 = alloca %struct.TYPE_27__*, align 8
  %9 = alloca %struct.TYPE_25__*, align 8
  %10 = alloca %struct.TYPE_26__*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca %struct.TYPE_24__*, align 8
  %14 = alloca %struct.TYPE_27__*, align 8
  %15 = alloca %struct.TYPE_27__*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  store %struct.TYPE_28__* %0, %struct.TYPE_28__** %5, align 8
  store %struct.TYPE_26__* %1, %struct.TYPE_26__** %6, align 8
  store %struct.TYPE_25__* %2, %struct.TYPE_25__** %7, align 8
  store %struct.TYPE_27__* %3, %struct.TYPE_27__** %8, align 8
  %20 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %21 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %20, i32 0, i32 4
  %22 = load i32, i32* %21, align 4
  %23 = call %struct.TYPE_26__* @get_attribute(i32 %22, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  store %struct.TYPE_26__* %23, %struct.TYPE_26__** %10, align 8
  %24 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  %25 = icmp ne %struct.TYPE_26__* %24, null
  br i1 %25, label %26, label %101

26:                                               ; preds = %4
  %27 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  %28 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %27, i32 0, i32 0
  %29 = load %struct.TYPE_23__*, %struct.TYPE_23__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = call i32 @parse_namespace(i64 %31, i8** %11, i8** %12)
  %33 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %34 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %33, i32 0, i32 3
  %35 = load i32, i32* %34, align 8
  %36 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %37 = load i8*, i8** %12, align 8
  %38 = call i32 @BAD_CAST(i8* %37)
  %39 = call %struct.TYPE_24__* @xmlSearchNs(i32 %35, %struct.TYPE_25__* %36, i32 %38)
  store %struct.TYPE_24__* %39, %struct.TYPE_24__** %13, align 8
  %40 = load %struct.TYPE_24__*, %struct.TYPE_24__** %13, align 8
  %41 = icmp ne %struct.TYPE_24__* %40, null
  br i1 %41, label %42, label %88

42:                                               ; preds = %26
  %43 = call i8* @emalloc(i32 4)
  %44 = bitcast i8* %43 to %struct.TYPE_27__*
  store %struct.TYPE_27__* %44, %struct.TYPE_27__** %14, align 8
  %45 = load %struct.TYPE_27__*, %struct.TYPE_27__** %14, align 8
  %46 = call i32 @memset(%struct.TYPE_27__* %45, i32 0, i32 4)
  %47 = load i8*, i8** %11, align 8
  %48 = call i8* @estrdup(i8* %47)
  %49 = load %struct.TYPE_27__*, %struct.TYPE_27__** %14, align 8
  %50 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %49, i32 0, i32 0
  store i8* %48, i8** %50, align 8
  %51 = load %struct.TYPE_24__*, %struct.TYPE_24__** %13, align 8
  %52 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = inttoptr i64 %53 to i8*
  %55 = call i8* @estrdup(i8* %54)
  %56 = load %struct.TYPE_27__*, %struct.TYPE_27__** %14, align 8
  %57 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %56, i32 0, i32 2
  store i8* %55, i8** %57, align 8
  %58 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %59 = load %struct.TYPE_27__*, %struct.TYPE_27__** %14, align 8
  %60 = load %struct.TYPE_24__*, %struct.TYPE_24__** %13, align 8
  %61 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load i8*, i8** %11, align 8
  %64 = call i32 @BAD_CAST(i8* %63)
  %65 = call i32 @get_create_encoder(%struct.TYPE_28__* %58, %struct.TYPE_27__* %59, i64 %62, i32 %64)
  %66 = load %struct.TYPE_27__*, %struct.TYPE_27__** %14, align 8
  %67 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %66, i32 0, i32 3
  store i32 %65, i32* %67, align 8
  %68 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %69 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %68, i32 0, i32 1
  %70 = load i32*, i32** %69, align 8
  %71 = icmp eq i32* %70, null
  br i1 %71, label %72, label %82

72:                                               ; preds = %42
  %73 = call i8* @emalloc(i32 4)
  %74 = bitcast i8* %73 to i32*
  %75 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %76 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %75, i32 0, i32 1
  store i32* %74, i32** %76, align 8
  %77 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %78 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %77, i32 0, i32 1
  %79 = load i32*, i32** %78, align 8
  %80 = load i32, i32* @delete_type, align 4
  %81 = call i32 @zend_hash_init(i32* %79, i32 0, i32* null, i32 %80, i32 0)
  br label %82

82:                                               ; preds = %72, %42
  %83 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %84 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %83, i32 0, i32 1
  %85 = load i32*, i32** %84, align 8
  %86 = load %struct.TYPE_27__*, %struct.TYPE_27__** %14, align 8
  %87 = call i32 @zend_hash_next_index_insert_ptr(i32* %85, %struct.TYPE_27__* %86)
  br label %88

88:                                               ; preds = %82, %26
  %89 = load i8*, i8** %11, align 8
  %90 = icmp ne i8* %89, null
  br i1 %90, label %91, label %94

91:                                               ; preds = %88
  %92 = load i8*, i8** %11, align 8
  %93 = call i32 @efree(i8* %92)
  br label %94

94:                                               ; preds = %91, %88
  %95 = load i8*, i8** %12, align 8
  %96 = icmp ne i8* %95, null
  br i1 %96, label %97, label %100

97:                                               ; preds = %94
  %98 = load i8*, i8** %12, align 8
  %99 = call i32 @efree(i8* %98)
  br label %100

100:                                              ; preds = %97, %94
  br label %101

101:                                              ; preds = %100, %4
  %102 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %103 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %102, i32 0, i32 2
  %104 = load %struct.TYPE_25__*, %struct.TYPE_25__** %103, align 8
  store %struct.TYPE_25__* %104, %struct.TYPE_25__** %9, align 8
  %105 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %106 = icmp ne %struct.TYPE_25__* %105, null
  br i1 %106, label %107, label %115

107:                                              ; preds = %101
  %108 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %109 = call i64 @node_is_equal(%struct.TYPE_25__* %108, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %115

111:                                              ; preds = %107
  %112 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %113 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %112, i32 0, i32 1
  %114 = load %struct.TYPE_25__*, %struct.TYPE_25__** %113, align 8
  store %struct.TYPE_25__* %114, %struct.TYPE_25__** %9, align 8
  br label %115

115:                                              ; preds = %111, %107, %101
  %116 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %117 = icmp ne %struct.TYPE_25__* %116, null
  br i1 %117, label %118, label %207

118:                                              ; preds = %115
  %119 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %120 = call i64 @node_is_equal(%struct.TYPE_25__* %119, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0))
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %207

122:                                              ; preds = %118
  %123 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  %124 = icmp ne %struct.TYPE_26__* %123, null
  br i1 %124, label %125, label %128

125:                                              ; preds = %122
  %126 = load i32, i32* @E_ERROR, align 4
  %127 = call i32 @soap_error0(i32 %126, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.3, i64 0, i64 0))
  br label %128

128:                                              ; preds = %125, %122
  %129 = call i8* @emalloc(i32 4)
  %130 = bitcast i8* %129 to %struct.TYPE_27__*
  store %struct.TYPE_27__* %130, %struct.TYPE_27__** %15, align 8
  %131 = load %struct.TYPE_27__*, %struct.TYPE_27__** %15, align 8
  %132 = call i32 @memset(%struct.TYPE_27__* %131, i32 0, i32 4)
  %133 = load i32, i32* @MAX_LENGTH_OF_LONG, align 4
  %134 = add nsw i32 %133, 1
  %135 = zext i32 %134 to i64
  %136 = call i8* @llvm.stacksave()
  store i8* %136, i8** %16, align 8
  %137 = alloca i8, i64 %135, align 16
  store i64 %135, i64* %17, align 8
  %138 = getelementptr inbounds i8, i8* %137, i64 %135
  %139 = getelementptr inbounds i8, i8* %138, i64 -1
  %140 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %141 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 4
  %143 = call i32 @zend_hash_num_elements(i32 %142)
  %144 = call i8* @zend_print_long_to_buf(i8* %139, i32 %143)
  store i8* %144, i8** %18, align 8
  %145 = getelementptr inbounds i8, i8* %137, i64 %135
  %146 = load i8*, i8** %18, align 8
  %147 = ptrtoint i8* %145 to i64
  %148 = ptrtoint i8* %146 to i64
  %149 = sub i64 %147, %148
  %150 = add i64 9, %149
  %151 = trunc i64 %150 to i32
  %152 = call i8* @emalloc(i32 %151)
  store i8* %152, i8** %19, align 8
  %153 = load i8*, i8** %19, align 8
  %154 = call i32 @memcpy(i8* %153, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), i32 9)
  %155 = load i8*, i8** %19, align 8
  %156 = getelementptr inbounds i8, i8* %155, i64 10
  %157 = getelementptr inbounds i8, i8* %156, i64 -1
  %158 = load i8*, i8** %18, align 8
  %159 = getelementptr inbounds i8, i8* %137, i64 %135
  %160 = load i8*, i8** %18, align 8
  %161 = ptrtoint i8* %159 to i64
  %162 = ptrtoint i8* %160 to i64
  %163 = sub i64 %161, %162
  %164 = trunc i64 %163 to i32
  %165 = call i32 @memcpy(i8* %157, i8* %158, i32 %164)
  %166 = load i8*, i8** %19, align 8
  %167 = load %struct.TYPE_27__*, %struct.TYPE_27__** %15, align 8
  %168 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %167, i32 0, i32 0
  store i8* %166, i8** %168, align 8
  %169 = load i8*, i8** %16, align 8
  call void @llvm.stackrestore(i8* %169)
  %170 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %171 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %170, i32 0, i32 0
  %172 = load %struct.TYPE_23__*, %struct.TYPE_23__** %171, align 8
  %173 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %172, i32 0, i32 0
  %174 = load i64, i64* %173, align 8
  %175 = inttoptr i64 %174 to i8*
  %176 = call i8* @estrdup(i8* %175)
  %177 = load %struct.TYPE_27__*, %struct.TYPE_27__** %15, align 8
  %178 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %177, i32 0, i32 2
  store i8* %176, i8** %178, align 8
  %179 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %180 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %179, i32 0, i32 1
  %181 = load i32*, i32** %180, align 8
  %182 = icmp eq i32* %181, null
  br i1 %182, label %183, label %193

183:                                              ; preds = %128
  %184 = call i8* @emalloc(i32 4)
  %185 = bitcast i8* %184 to i32*
  %186 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %187 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %186, i32 0, i32 1
  store i32* %185, i32** %187, align 8
  %188 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %189 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %188, i32 0, i32 1
  %190 = load i32*, i32** %189, align 8
  %191 = load i32, i32* @delete_type, align 4
  %192 = call i32 @zend_hash_init(i32* %190, i32 0, i32* null, i32 %191, i32 0)
  br label %193

193:                                              ; preds = %183, %128
  %194 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %195 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %194, i32 0, i32 1
  %196 = load i32*, i32** %195, align 8
  %197 = load %struct.TYPE_27__*, %struct.TYPE_27__** %15, align 8
  %198 = call i32 @zend_hash_next_index_insert_ptr(i32* %196, %struct.TYPE_27__* %197)
  %199 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %200 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %201 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %202 = load %struct.TYPE_27__*, %struct.TYPE_27__** %15, align 8
  %203 = call i32 @schema_simpleType(%struct.TYPE_28__* %199, %struct.TYPE_26__* %200, %struct.TYPE_25__* %201, %struct.TYPE_27__* %202)
  %204 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %205 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %204, i32 0, i32 1
  %206 = load %struct.TYPE_25__*, %struct.TYPE_25__** %205, align 8
  store %struct.TYPE_25__* %206, %struct.TYPE_25__** %9, align 8
  br label %207

207:                                              ; preds = %193, %118, %115
  %208 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %209 = icmp ne %struct.TYPE_25__* %208, null
  br i1 %209, label %210, label %216

210:                                              ; preds = %207
  %211 = load i32, i32* @E_ERROR, align 4
  %212 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %213 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %212, i32 0, i32 0
  %214 = load i32, i32* %213, align 8
  %215 = call i32 @soap_error1(i32 %211, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.5, i64 0, i64 0), i32 %214)
  br label %216

216:                                              ; preds = %210, %207
  %217 = load i32, i32* @TRUE, align 4
  ret i32 %217
}

declare dso_local %struct.TYPE_26__* @get_attribute(i32, i8*) #1

declare dso_local i32 @parse_namespace(i64, i8**, i8**) #1

declare dso_local %struct.TYPE_24__* @xmlSearchNs(i32, %struct.TYPE_25__*, i32) #1

declare dso_local i32 @BAD_CAST(i8*) #1

declare dso_local i8* @emalloc(i32) #1

declare dso_local i32 @memset(%struct.TYPE_27__*, i32, i32) #1

declare dso_local i8* @estrdup(i8*) #1

declare dso_local i32 @get_create_encoder(%struct.TYPE_28__*, %struct.TYPE_27__*, i64, i32) #1

declare dso_local i32 @zend_hash_init(i32*, i32, i32*, i32, i32) #1

declare dso_local i32 @zend_hash_next_index_insert_ptr(i32*, %struct.TYPE_27__*) #1

declare dso_local i32 @efree(i8*) #1

declare dso_local i64 @node_is_equal(%struct.TYPE_25__*, i8*) #1

declare dso_local i32 @soap_error0(i32, i8*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i8* @zend_print_long_to_buf(i8*, i32) #1

declare dso_local i32 @zend_hash_num_elements(i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

declare dso_local i32 @schema_simpleType(%struct.TYPE_28__*, %struct.TYPE_26__*, %struct.TYPE_25__*, %struct.TYPE_27__*) #1

declare dso_local i32 @soap_error1(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
