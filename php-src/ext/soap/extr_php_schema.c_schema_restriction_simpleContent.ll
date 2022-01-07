; ModuleID = '/home/carl/AnghaBench/php-src/ext/soap/extr_php_schema.c_schema_restriction_simpleContent.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/soap/extr_php_schema.c_schema_restriction_simpleContent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_34__ = type { %struct.TYPE_30__* }
%struct.TYPE_30__ = type { i32 }
%struct.TYPE_33__ = type { i32, %struct.TYPE_33__*, %struct.TYPE_33__*, i32, i32 }
%struct.TYPE_35__ = type { %struct.TYPE_31__*, i32 }
%struct.TYPE_31__ = type { i32*, %struct.TYPE_36__*, %struct.TYPE_36__*, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_36__ = type { i32 }
%struct.TYPE_32__ = type { i32 }

@.str = private unnamed_addr constant [5 x i8] c"base\00", align 1
@E_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [52 x i8] c"Parsing Schema: restriction has no 'base' attribute\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"annotation\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"simpleType\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"minExclusive\00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c"minInclusive\00", align 1
@.str.6 = private unnamed_addr constant [13 x i8] c"maxExclusive\00", align 1
@.str.7 = private unnamed_addr constant [13 x i8] c"maxInclusive\00", align 1
@.str.8 = private unnamed_addr constant [12 x i8] c"totalDigits\00", align 1
@.str.9 = private unnamed_addr constant [15 x i8] c"fractionDigits\00", align 1
@.str.10 = private unnamed_addr constant [7 x i8] c"length\00", align 1
@.str.11 = private unnamed_addr constant [10 x i8] c"minLength\00", align 1
@.str.12 = private unnamed_addr constant [10 x i8] c"maxLength\00", align 1
@.str.13 = private unnamed_addr constant [11 x i8] c"whiteSpace\00", align 1
@.str.14 = private unnamed_addr constant [8 x i8] c"pattern\00", align 1
@.str.15 = private unnamed_addr constant [12 x i8] c"enumeration\00", align 1
@delete_restriction_var_char = common dso_local global i32 0, align 4
@.str.16 = private unnamed_addr constant [10 x i8] c"attribute\00", align 1
@.str.17 = private unnamed_addr constant [15 x i8] c"attributeGroup\00", align 1
@.str.18 = private unnamed_addr constant [13 x i8] c"anyAttribute\00", align 1
@.str.19 = private unnamed_addr constant [47 x i8] c"Parsing Schema: unexpected <%s> in restriction\00", align 1
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.TYPE_34__*, %struct.TYPE_33__*, %struct.TYPE_35__*, i32)* @schema_restriction_simpleContent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @schema_restriction_simpleContent(i32 %0, %struct.TYPE_34__* %1, %struct.TYPE_33__* %2, %struct.TYPE_35__* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_34__*, align 8
  %8 = alloca %struct.TYPE_33__*, align 8
  %9 = alloca %struct.TYPE_35__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_33__*, align 8
  %12 = alloca %struct.TYPE_34__*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca %struct.TYPE_32__*, align 8
  %16 = alloca %struct.TYPE_36__*, align 8
  store i32 %0, i32* %6, align 4
  store %struct.TYPE_34__* %1, %struct.TYPE_34__** %7, align 8
  store %struct.TYPE_33__* %2, %struct.TYPE_33__** %8, align 8
  store %struct.TYPE_35__* %3, %struct.TYPE_35__** %9, align 8
  store i32 %4, i32* %10, align 4
  %17 = load %struct.TYPE_33__*, %struct.TYPE_33__** %8, align 8
  %18 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %17, i32 0, i32 4
  %19 = load i32, i32* %18, align 4
  %20 = call %struct.TYPE_34__* @get_attribute(i32 %19, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  store %struct.TYPE_34__* %20, %struct.TYPE_34__** %12, align 8
  %21 = load %struct.TYPE_34__*, %struct.TYPE_34__** %12, align 8
  %22 = icmp ne %struct.TYPE_34__* %21, null
  br i1 %22, label %23, label %63

23:                                               ; preds = %5
  %24 = load %struct.TYPE_34__*, %struct.TYPE_34__** %12, align 8
  %25 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %24, i32 0, i32 0
  %26 = load %struct.TYPE_30__*, %struct.TYPE_30__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @parse_namespace(i32 %28, i8** %13, i8** %14)
  %30 = load %struct.TYPE_33__*, %struct.TYPE_33__** %8, align 8
  %31 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %30, i32 0, i32 3
  %32 = load i32, i32* %31, align 8
  %33 = load %struct.TYPE_33__*, %struct.TYPE_33__** %8, align 8
  %34 = load i8*, i8** %14, align 8
  %35 = call i32 @BAD_CAST(i8* %34)
  %36 = call %struct.TYPE_32__* @xmlSearchNs(i32 %32, %struct.TYPE_33__* %33, i32 %35)
  store %struct.TYPE_32__* %36, %struct.TYPE_32__** %15, align 8
  %37 = load %struct.TYPE_32__*, %struct.TYPE_32__** %15, align 8
  %38 = icmp ne %struct.TYPE_32__* %37, null
  br i1 %38, label %39, label %50

39:                                               ; preds = %23
  %40 = load i32, i32* %6, align 4
  %41 = load %struct.TYPE_35__*, %struct.TYPE_35__** %9, align 8
  %42 = load %struct.TYPE_32__*, %struct.TYPE_32__** %15, align 8
  %43 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i8*, i8** %13, align 8
  %46 = call i32 @BAD_CAST(i8* %45)
  %47 = call i32 @get_create_encoder(i32 %40, %struct.TYPE_35__* %41, i32 %44, i32 %46)
  %48 = load %struct.TYPE_35__*, %struct.TYPE_35__** %9, align 8
  %49 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %48, i32 0, i32 1
  store i32 %47, i32* %49, align 8
  br label %50

50:                                               ; preds = %39, %23
  %51 = load i8*, i8** %13, align 8
  %52 = icmp ne i8* %51, null
  br i1 %52, label %53, label %56

53:                                               ; preds = %50
  %54 = load i8*, i8** %13, align 8
  %55 = call i32 @efree(i8* %54)
  br label %56

56:                                               ; preds = %53, %50
  %57 = load i8*, i8** %14, align 8
  %58 = icmp ne i8* %57, null
  br i1 %58, label %59, label %62

59:                                               ; preds = %56
  %60 = load i8*, i8** %14, align 8
  %61 = call i32 @efree(i8* %60)
  br label %62

62:                                               ; preds = %59, %56
  br label %70

63:                                               ; preds = %5
  %64 = load i32, i32* %10, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %69, label %66

66:                                               ; preds = %63
  %67 = load i32, i32* @E_ERROR, align 4
  %68 = call i32 @soap_error0(i32 %67, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.1, i64 0, i64 0))
  br label %69

69:                                               ; preds = %66, %63
  br label %70

70:                                               ; preds = %69, %62
  %71 = load %struct.TYPE_35__*, %struct.TYPE_35__** %9, align 8
  %72 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %71, i32 0, i32 0
  %73 = load %struct.TYPE_31__*, %struct.TYPE_31__** %72, align 8
  %74 = icmp eq %struct.TYPE_31__* %73, null
  br i1 %74, label %75, label %84

75:                                               ; preds = %70
  %76 = call i8* @emalloc(i32 4)
  %77 = bitcast i8* %76 to %struct.TYPE_31__*
  %78 = load %struct.TYPE_35__*, %struct.TYPE_35__** %9, align 8
  %79 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %78, i32 0, i32 0
  store %struct.TYPE_31__* %77, %struct.TYPE_31__** %79, align 8
  %80 = load %struct.TYPE_35__*, %struct.TYPE_35__** %9, align 8
  %81 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %80, i32 0, i32 0
  %82 = load %struct.TYPE_31__*, %struct.TYPE_31__** %81, align 8
  %83 = call i32 @memset(%struct.TYPE_31__* %82, i32 0, i32 4)
  br label %84

84:                                               ; preds = %75, %70
  %85 = load %struct.TYPE_33__*, %struct.TYPE_33__** %8, align 8
  %86 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %85, i32 0, i32 2
  %87 = load %struct.TYPE_33__*, %struct.TYPE_33__** %86, align 8
  store %struct.TYPE_33__* %87, %struct.TYPE_33__** %11, align 8
  %88 = load %struct.TYPE_33__*, %struct.TYPE_33__** %11, align 8
  %89 = icmp ne %struct.TYPE_33__* %88, null
  br i1 %89, label %90, label %98

90:                                               ; preds = %84
  %91 = load %struct.TYPE_33__*, %struct.TYPE_33__** %11, align 8
  %92 = call i64 @node_is_equal(%struct.TYPE_33__* %91, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0))
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %98

94:                                               ; preds = %90
  %95 = load %struct.TYPE_33__*, %struct.TYPE_33__** %11, align 8
  %96 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %95, i32 0, i32 1
  %97 = load %struct.TYPE_33__*, %struct.TYPE_33__** %96, align 8
  store %struct.TYPE_33__* %97, %struct.TYPE_33__** %11, align 8
  br label %98

98:                                               ; preds = %94, %90, %84
  %99 = load %struct.TYPE_33__*, %struct.TYPE_33__** %11, align 8
  %100 = icmp ne %struct.TYPE_33__* %99, null
  br i1 %100, label %101, label %114

101:                                              ; preds = %98
  %102 = load %struct.TYPE_33__*, %struct.TYPE_33__** %11, align 8
  %103 = call i64 @node_is_equal(%struct.TYPE_33__* %102, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0))
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %114

105:                                              ; preds = %101
  %106 = load i32, i32* %6, align 4
  %107 = load %struct.TYPE_34__*, %struct.TYPE_34__** %7, align 8
  %108 = load %struct.TYPE_33__*, %struct.TYPE_33__** %11, align 8
  %109 = load %struct.TYPE_35__*, %struct.TYPE_35__** %9, align 8
  %110 = call i32 @schema_simpleType(i32 %106, %struct.TYPE_34__* %107, %struct.TYPE_33__* %108, %struct.TYPE_35__* %109)
  %111 = load %struct.TYPE_33__*, %struct.TYPE_33__** %11, align 8
  %112 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %111, i32 0, i32 1
  %113 = load %struct.TYPE_33__*, %struct.TYPE_33__** %112, align 8
  store %struct.TYPE_33__* %113, %struct.TYPE_33__** %11, align 8
  br label %114

114:                                              ; preds = %105, %101, %98
  br label %115

115:                                              ; preds = %298, %114
  %116 = load %struct.TYPE_33__*, %struct.TYPE_33__** %11, align 8
  %117 = icmp ne %struct.TYPE_33__* %116, null
  br i1 %117, label %118, label %302

118:                                              ; preds = %115
  %119 = load %struct.TYPE_33__*, %struct.TYPE_33__** %11, align 8
  %120 = call i64 @node_is_equal(%struct.TYPE_33__* %119, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0))
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %129

122:                                              ; preds = %118
  %123 = load %struct.TYPE_33__*, %struct.TYPE_33__** %11, align 8
  %124 = load %struct.TYPE_35__*, %struct.TYPE_35__** %9, align 8
  %125 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %124, i32 0, i32 0
  %126 = load %struct.TYPE_31__*, %struct.TYPE_31__** %125, align 8
  %127 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %126, i32 0, i32 11
  %128 = call i32 @schema_restriction_var_int(%struct.TYPE_33__* %123, i32* %127)
  br label %298

129:                                              ; preds = %118
  %130 = load %struct.TYPE_33__*, %struct.TYPE_33__** %11, align 8
  %131 = call i64 @node_is_equal(%struct.TYPE_33__* %130, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0))
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %133, label %140

133:                                              ; preds = %129
  %134 = load %struct.TYPE_33__*, %struct.TYPE_33__** %11, align 8
  %135 = load %struct.TYPE_35__*, %struct.TYPE_35__** %9, align 8
  %136 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %135, i32 0, i32 0
  %137 = load %struct.TYPE_31__*, %struct.TYPE_31__** %136, align 8
  %138 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %137, i32 0, i32 10
  %139 = call i32 @schema_restriction_var_int(%struct.TYPE_33__* %134, i32* %138)
  br label %297

140:                                              ; preds = %129
  %141 = load %struct.TYPE_33__*, %struct.TYPE_33__** %11, align 8
  %142 = call i64 @node_is_equal(%struct.TYPE_33__* %141, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i64 0, i64 0))
  %143 = icmp ne i64 %142, 0
  br i1 %143, label %144, label %151

144:                                              ; preds = %140
  %145 = load %struct.TYPE_33__*, %struct.TYPE_33__** %11, align 8
  %146 = load %struct.TYPE_35__*, %struct.TYPE_35__** %9, align 8
  %147 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %146, i32 0, i32 0
  %148 = load %struct.TYPE_31__*, %struct.TYPE_31__** %147, align 8
  %149 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %148, i32 0, i32 9
  %150 = call i32 @schema_restriction_var_int(%struct.TYPE_33__* %145, i32* %149)
  br label %296

151:                                              ; preds = %140
  %152 = load %struct.TYPE_33__*, %struct.TYPE_33__** %11, align 8
  %153 = call i64 @node_is_equal(%struct.TYPE_33__* %152, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7, i64 0, i64 0))
  %154 = icmp ne i64 %153, 0
  br i1 %154, label %155, label %162

155:                                              ; preds = %151
  %156 = load %struct.TYPE_33__*, %struct.TYPE_33__** %11, align 8
  %157 = load %struct.TYPE_35__*, %struct.TYPE_35__** %9, align 8
  %158 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %157, i32 0, i32 0
  %159 = load %struct.TYPE_31__*, %struct.TYPE_31__** %158, align 8
  %160 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %159, i32 0, i32 8
  %161 = call i32 @schema_restriction_var_int(%struct.TYPE_33__* %156, i32* %160)
  br label %295

162:                                              ; preds = %151
  %163 = load %struct.TYPE_33__*, %struct.TYPE_33__** %11, align 8
  %164 = call i64 @node_is_equal(%struct.TYPE_33__* %163, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.8, i64 0, i64 0))
  %165 = icmp ne i64 %164, 0
  br i1 %165, label %166, label %173

166:                                              ; preds = %162
  %167 = load %struct.TYPE_33__*, %struct.TYPE_33__** %11, align 8
  %168 = load %struct.TYPE_35__*, %struct.TYPE_35__** %9, align 8
  %169 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %168, i32 0, i32 0
  %170 = load %struct.TYPE_31__*, %struct.TYPE_31__** %169, align 8
  %171 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %170, i32 0, i32 7
  %172 = call i32 @schema_restriction_var_int(%struct.TYPE_33__* %167, i32* %171)
  br label %294

173:                                              ; preds = %162
  %174 = load %struct.TYPE_33__*, %struct.TYPE_33__** %11, align 8
  %175 = call i64 @node_is_equal(%struct.TYPE_33__* %174, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.9, i64 0, i64 0))
  %176 = icmp ne i64 %175, 0
  br i1 %176, label %177, label %184

177:                                              ; preds = %173
  %178 = load %struct.TYPE_33__*, %struct.TYPE_33__** %11, align 8
  %179 = load %struct.TYPE_35__*, %struct.TYPE_35__** %9, align 8
  %180 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %179, i32 0, i32 0
  %181 = load %struct.TYPE_31__*, %struct.TYPE_31__** %180, align 8
  %182 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %181, i32 0, i32 6
  %183 = call i32 @schema_restriction_var_int(%struct.TYPE_33__* %178, i32* %182)
  br label %293

184:                                              ; preds = %173
  %185 = load %struct.TYPE_33__*, %struct.TYPE_33__** %11, align 8
  %186 = call i64 @node_is_equal(%struct.TYPE_33__* %185, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i64 0, i64 0))
  %187 = icmp ne i64 %186, 0
  br i1 %187, label %188, label %195

188:                                              ; preds = %184
  %189 = load %struct.TYPE_33__*, %struct.TYPE_33__** %11, align 8
  %190 = load %struct.TYPE_35__*, %struct.TYPE_35__** %9, align 8
  %191 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %190, i32 0, i32 0
  %192 = load %struct.TYPE_31__*, %struct.TYPE_31__** %191, align 8
  %193 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %192, i32 0, i32 5
  %194 = call i32 @schema_restriction_var_int(%struct.TYPE_33__* %189, i32* %193)
  br label %292

195:                                              ; preds = %184
  %196 = load %struct.TYPE_33__*, %struct.TYPE_33__** %11, align 8
  %197 = call i64 @node_is_equal(%struct.TYPE_33__* %196, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.11, i64 0, i64 0))
  %198 = icmp ne i64 %197, 0
  br i1 %198, label %199, label %206

199:                                              ; preds = %195
  %200 = load %struct.TYPE_33__*, %struct.TYPE_33__** %11, align 8
  %201 = load %struct.TYPE_35__*, %struct.TYPE_35__** %9, align 8
  %202 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %201, i32 0, i32 0
  %203 = load %struct.TYPE_31__*, %struct.TYPE_31__** %202, align 8
  %204 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %203, i32 0, i32 4
  %205 = call i32 @schema_restriction_var_int(%struct.TYPE_33__* %200, i32* %204)
  br label %291

206:                                              ; preds = %195
  %207 = load %struct.TYPE_33__*, %struct.TYPE_33__** %11, align 8
  %208 = call i64 @node_is_equal(%struct.TYPE_33__* %207, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.12, i64 0, i64 0))
  %209 = icmp ne i64 %208, 0
  br i1 %209, label %210, label %217

210:                                              ; preds = %206
  %211 = load %struct.TYPE_33__*, %struct.TYPE_33__** %11, align 8
  %212 = load %struct.TYPE_35__*, %struct.TYPE_35__** %9, align 8
  %213 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %212, i32 0, i32 0
  %214 = load %struct.TYPE_31__*, %struct.TYPE_31__** %213, align 8
  %215 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %214, i32 0, i32 3
  %216 = call i32 @schema_restriction_var_int(%struct.TYPE_33__* %211, i32* %215)
  br label %290

217:                                              ; preds = %206
  %218 = load %struct.TYPE_33__*, %struct.TYPE_33__** %11, align 8
  %219 = call i64 @node_is_equal(%struct.TYPE_33__* %218, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.13, i64 0, i64 0))
  %220 = icmp ne i64 %219, 0
  br i1 %220, label %221, label %228

221:                                              ; preds = %217
  %222 = load %struct.TYPE_33__*, %struct.TYPE_33__** %11, align 8
  %223 = load %struct.TYPE_35__*, %struct.TYPE_35__** %9, align 8
  %224 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %223, i32 0, i32 0
  %225 = load %struct.TYPE_31__*, %struct.TYPE_31__** %224, align 8
  %226 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %225, i32 0, i32 2
  %227 = call i32 @schema_restriction_var_char(%struct.TYPE_33__* %222, %struct.TYPE_36__** %226)
  br label %289

228:                                              ; preds = %217
  %229 = load %struct.TYPE_33__*, %struct.TYPE_33__** %11, align 8
  %230 = call i64 @node_is_equal(%struct.TYPE_33__* %229, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.14, i64 0, i64 0))
  %231 = icmp ne i64 %230, 0
  br i1 %231, label %232, label %239

232:                                              ; preds = %228
  %233 = load %struct.TYPE_33__*, %struct.TYPE_33__** %11, align 8
  %234 = load %struct.TYPE_35__*, %struct.TYPE_35__** %9, align 8
  %235 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %234, i32 0, i32 0
  %236 = load %struct.TYPE_31__*, %struct.TYPE_31__** %235, align 8
  %237 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %236, i32 0, i32 1
  %238 = call i32 @schema_restriction_var_char(%struct.TYPE_33__* %233, %struct.TYPE_36__** %237)
  br label %288

239:                                              ; preds = %228
  %240 = load %struct.TYPE_33__*, %struct.TYPE_33__** %11, align 8
  %241 = call i64 @node_is_equal(%struct.TYPE_33__* %240, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.15, i64 0, i64 0))
  %242 = icmp ne i64 %241, 0
  br i1 %242, label %243, label %286

243:                                              ; preds = %239
  store %struct.TYPE_36__* null, %struct.TYPE_36__** %16, align 8
  %244 = load %struct.TYPE_33__*, %struct.TYPE_33__** %11, align 8
  %245 = call i32 @schema_restriction_var_char(%struct.TYPE_33__* %244, %struct.TYPE_36__** %16)
  %246 = load %struct.TYPE_35__*, %struct.TYPE_35__** %9, align 8
  %247 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %246, i32 0, i32 0
  %248 = load %struct.TYPE_31__*, %struct.TYPE_31__** %247, align 8
  %249 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %248, i32 0, i32 0
  %250 = load i32*, i32** %249, align 8
  %251 = icmp eq i32* %250, null
  br i1 %251, label %252, label %266

252:                                              ; preds = %243
  %253 = call i8* @emalloc(i32 4)
  %254 = bitcast i8* %253 to i32*
  %255 = load %struct.TYPE_35__*, %struct.TYPE_35__** %9, align 8
  %256 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %255, i32 0, i32 0
  %257 = load %struct.TYPE_31__*, %struct.TYPE_31__** %256, align 8
  %258 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %257, i32 0, i32 0
  store i32* %254, i32** %258, align 8
  %259 = load %struct.TYPE_35__*, %struct.TYPE_35__** %9, align 8
  %260 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %259, i32 0, i32 0
  %261 = load %struct.TYPE_31__*, %struct.TYPE_31__** %260, align 8
  %262 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %261, i32 0, i32 0
  %263 = load i32*, i32** %262, align 8
  %264 = load i32, i32* @delete_restriction_var_char, align 4
  %265 = call i32 @zend_hash_init(i32* %263, i32 0, i32* null, i32 %264, i32 0)
  br label %266

266:                                              ; preds = %252, %243
  %267 = load %struct.TYPE_35__*, %struct.TYPE_35__** %9, align 8
  %268 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %267, i32 0, i32 0
  %269 = load %struct.TYPE_31__*, %struct.TYPE_31__** %268, align 8
  %270 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %269, i32 0, i32 0
  %271 = load i32*, i32** %270, align 8
  %272 = load %struct.TYPE_36__*, %struct.TYPE_36__** %16, align 8
  %273 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %272, i32 0, i32 0
  %274 = load i32, i32* %273, align 4
  %275 = load %struct.TYPE_36__*, %struct.TYPE_36__** %16, align 8
  %276 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %275, i32 0, i32 0
  %277 = load i32, i32* %276, align 4
  %278 = call i32 @strlen(i32 %277)
  %279 = load %struct.TYPE_36__*, %struct.TYPE_36__** %16, align 8
  %280 = call i32* @zend_hash_str_add_ptr(i32* %271, i32 %274, i32 %278, %struct.TYPE_36__* %279)
  %281 = icmp eq i32* %280, null
  br i1 %281, label %282, label %285

282:                                              ; preds = %266
  %283 = load %struct.TYPE_36__*, %struct.TYPE_36__** %16, align 8
  %284 = call i32 @delete_restriction_var_char_int(%struct.TYPE_36__* %283)
  br label %285

285:                                              ; preds = %282, %266
  br label %287

286:                                              ; preds = %239
  br label %302

287:                                              ; preds = %285
  br label %288

288:                                              ; preds = %287, %232
  br label %289

289:                                              ; preds = %288, %221
  br label %290

290:                                              ; preds = %289, %210
  br label %291

291:                                              ; preds = %290, %199
  br label %292

292:                                              ; preds = %291, %188
  br label %293

293:                                              ; preds = %292, %177
  br label %294

294:                                              ; preds = %293, %166
  br label %295

295:                                              ; preds = %294, %155
  br label %296

296:                                              ; preds = %295, %144
  br label %297

297:                                              ; preds = %296, %133
  br label %298

298:                                              ; preds = %297, %122
  %299 = load %struct.TYPE_33__*, %struct.TYPE_33__** %11, align 8
  %300 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %299, i32 0, i32 1
  %301 = load %struct.TYPE_33__*, %struct.TYPE_33__** %300, align 8
  store %struct.TYPE_33__* %301, %struct.TYPE_33__** %11, align 8
  br label %115

302:                                              ; preds = %286, %115
  %303 = load i32, i32* %10, align 4
  %304 = icmp ne i32 %303, 0
  br i1 %304, label %350, label %305

305:                                              ; preds = %302
  br label %306

306:                                              ; preds = %345, %305
  %307 = load %struct.TYPE_33__*, %struct.TYPE_33__** %11, align 8
  %308 = icmp ne %struct.TYPE_33__* %307, null
  br i1 %308, label %309, label %349

309:                                              ; preds = %306
  %310 = load %struct.TYPE_33__*, %struct.TYPE_33__** %11, align 8
  %311 = call i64 @node_is_equal(%struct.TYPE_33__* %310, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.16, i64 0, i64 0))
  %312 = icmp ne i64 %311, 0
  br i1 %312, label %313, label %319

313:                                              ; preds = %309
  %314 = load i32, i32* %6, align 4
  %315 = load %struct.TYPE_34__*, %struct.TYPE_34__** %7, align 8
  %316 = load %struct.TYPE_33__*, %struct.TYPE_33__** %11, align 8
  %317 = load %struct.TYPE_35__*, %struct.TYPE_35__** %9, align 8
  %318 = call i32 @schema_attribute(i32 %314, %struct.TYPE_34__* %315, %struct.TYPE_33__* %316, %struct.TYPE_35__* %317, i32* null)
  br label %345

319:                                              ; preds = %309
  %320 = load %struct.TYPE_33__*, %struct.TYPE_33__** %11, align 8
  %321 = call i64 @node_is_equal(%struct.TYPE_33__* %320, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.17, i64 0, i64 0))
  %322 = icmp ne i64 %321, 0
  br i1 %322, label %323, label %329

323:                                              ; preds = %319
  %324 = load i32, i32* %6, align 4
  %325 = load %struct.TYPE_34__*, %struct.TYPE_34__** %7, align 8
  %326 = load %struct.TYPE_33__*, %struct.TYPE_33__** %11, align 8
  %327 = load %struct.TYPE_35__*, %struct.TYPE_35__** %9, align 8
  %328 = call i32 @schema_attributeGroup(i32 %324, %struct.TYPE_34__* %325, %struct.TYPE_33__* %326, %struct.TYPE_35__* %327, i32* null)
  br label %344

329:                                              ; preds = %319
  %330 = load %struct.TYPE_33__*, %struct.TYPE_33__** %11, align 8
  %331 = call i64 @node_is_equal(%struct.TYPE_33__* %330, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.18, i64 0, i64 0))
  %332 = icmp ne i64 %331, 0
  br i1 %332, label %333, label %337

333:                                              ; preds = %329
  %334 = load %struct.TYPE_33__*, %struct.TYPE_33__** %11, align 8
  %335 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %334, i32 0, i32 1
  %336 = load %struct.TYPE_33__*, %struct.TYPE_33__** %335, align 8
  store %struct.TYPE_33__* %336, %struct.TYPE_33__** %11, align 8
  br label %349

337:                                              ; preds = %329
  %338 = load i32, i32* @E_ERROR, align 4
  %339 = load %struct.TYPE_33__*, %struct.TYPE_33__** %11, align 8
  %340 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %339, i32 0, i32 0
  %341 = load i32, i32* %340, align 8
  %342 = call i32 @soap_error1(i32 %338, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.19, i64 0, i64 0), i32 %341)
  br label %343

343:                                              ; preds = %337
  br label %344

344:                                              ; preds = %343, %323
  br label %345

345:                                              ; preds = %344, %313
  %346 = load %struct.TYPE_33__*, %struct.TYPE_33__** %11, align 8
  %347 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %346, i32 0, i32 1
  %348 = load %struct.TYPE_33__*, %struct.TYPE_33__** %347, align 8
  store %struct.TYPE_33__* %348, %struct.TYPE_33__** %11, align 8
  br label %306

349:                                              ; preds = %333, %306
  br label %350

350:                                              ; preds = %349, %302
  %351 = load %struct.TYPE_33__*, %struct.TYPE_33__** %11, align 8
  %352 = icmp ne %struct.TYPE_33__* %351, null
  br i1 %352, label %353, label %359

353:                                              ; preds = %350
  %354 = load i32, i32* @E_ERROR, align 4
  %355 = load %struct.TYPE_33__*, %struct.TYPE_33__** %11, align 8
  %356 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %355, i32 0, i32 0
  %357 = load i32, i32* %356, align 8
  %358 = call i32 @soap_error1(i32 %354, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.19, i64 0, i64 0), i32 %357)
  br label %359

359:                                              ; preds = %353, %350
  %360 = load i32, i32* @TRUE, align 4
  ret i32 %360
}

declare dso_local %struct.TYPE_34__* @get_attribute(i32, i8*) #1

declare dso_local i32 @parse_namespace(i32, i8**, i8**) #1

declare dso_local %struct.TYPE_32__* @xmlSearchNs(i32, %struct.TYPE_33__*, i32) #1

declare dso_local i32 @BAD_CAST(i8*) #1

declare dso_local i32 @get_create_encoder(i32, %struct.TYPE_35__*, i32, i32) #1

declare dso_local i32 @efree(i8*) #1

declare dso_local i32 @soap_error0(i32, i8*) #1

declare dso_local i8* @emalloc(i32) #1

declare dso_local i32 @memset(%struct.TYPE_31__*, i32, i32) #1

declare dso_local i64 @node_is_equal(%struct.TYPE_33__*, i8*) #1

declare dso_local i32 @schema_simpleType(i32, %struct.TYPE_34__*, %struct.TYPE_33__*, %struct.TYPE_35__*) #1

declare dso_local i32 @schema_restriction_var_int(%struct.TYPE_33__*, i32*) #1

declare dso_local i32 @schema_restriction_var_char(%struct.TYPE_33__*, %struct.TYPE_36__**) #1

declare dso_local i32 @zend_hash_init(i32*, i32, i32*, i32, i32) #1

declare dso_local i32* @zend_hash_str_add_ptr(i32*, i32, i32, %struct.TYPE_36__*) #1

declare dso_local i32 @strlen(i32) #1

declare dso_local i32 @delete_restriction_var_char_int(%struct.TYPE_36__*) #1

declare dso_local i32 @schema_attribute(i32, %struct.TYPE_34__*, %struct.TYPE_33__*, %struct.TYPE_35__*, i32*) #1

declare dso_local i32 @schema_attributeGroup(i32, %struct.TYPE_34__*, %struct.TYPE_33__*, %struct.TYPE_35__*, i32*) #1

declare dso_local i32 @soap_error1(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
