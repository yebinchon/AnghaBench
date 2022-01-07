; ModuleID = '/home/carl/AnghaBench/php-src/ext/soap/extr_php_schema.c_schema_restriction_complexContent.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/soap/extr_php_schema.c_schema_restriction_complexContent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_35__ = type { %struct.TYPE_32__* }
%struct.TYPE_32__ = type { i32 }
%struct.TYPE_34__ = type { i32, %struct.TYPE_34__*, %struct.TYPE_34__*, i32, i32 }
%struct.TYPE_36__ = type { i32 }
%struct.TYPE_33__ = type { i32 }

@.str = private unnamed_addr constant [5 x i8] c"base\00", align 1
@E_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [52 x i8] c"Parsing Schema: restriction has no 'base' attribute\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"annotation\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"group\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"all\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"choice\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"sequence\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"attribute\00", align 1
@.str.8 = private unnamed_addr constant [15 x i8] c"attributeGroup\00", align 1
@.str.9 = private unnamed_addr constant [13 x i8] c"anyAttribute\00", align 1
@.str.10 = private unnamed_addr constant [47 x i8] c"Parsing Schema: unexpected <%s> in restriction\00", align 1
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.TYPE_35__*, %struct.TYPE_34__*, %struct.TYPE_36__*)* @schema_restriction_complexContent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @schema_restriction_complexContent(i32 %0, %struct.TYPE_35__* %1, %struct.TYPE_34__* %2, %struct.TYPE_36__* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_35__*, align 8
  %7 = alloca %struct.TYPE_34__*, align 8
  %8 = alloca %struct.TYPE_36__*, align 8
  %9 = alloca %struct.TYPE_35__*, align 8
  %10 = alloca %struct.TYPE_34__*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca %struct.TYPE_33__*, align 8
  store i32 %0, i32* %5, align 4
  store %struct.TYPE_35__* %1, %struct.TYPE_35__** %6, align 8
  store %struct.TYPE_34__* %2, %struct.TYPE_34__** %7, align 8
  store %struct.TYPE_36__* %3, %struct.TYPE_36__** %8, align 8
  %14 = load %struct.TYPE_34__*, %struct.TYPE_34__** %7, align 8
  %15 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %14, i32 0, i32 4
  %16 = load i32, i32* %15, align 4
  %17 = call %struct.TYPE_35__* @get_attribute(i32 %16, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  store %struct.TYPE_35__* %17, %struct.TYPE_35__** %9, align 8
  %18 = load %struct.TYPE_35__*, %struct.TYPE_35__** %9, align 8
  %19 = icmp ne %struct.TYPE_35__* %18, null
  br i1 %19, label %20, label %60

20:                                               ; preds = %4
  %21 = load %struct.TYPE_35__*, %struct.TYPE_35__** %9, align 8
  %22 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %21, i32 0, i32 0
  %23 = load %struct.TYPE_32__*, %struct.TYPE_32__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @parse_namespace(i32 %25, i8** %11, i8** %12)
  %27 = load %struct.TYPE_34__*, %struct.TYPE_34__** %7, align 8
  %28 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %27, i32 0, i32 3
  %29 = load i32, i32* %28, align 8
  %30 = load %struct.TYPE_34__*, %struct.TYPE_34__** %7, align 8
  %31 = load i8*, i8** %12, align 8
  %32 = call i32 @BAD_CAST(i8* %31)
  %33 = call %struct.TYPE_33__* @xmlSearchNs(i32 %29, %struct.TYPE_34__* %30, i32 %32)
  store %struct.TYPE_33__* %33, %struct.TYPE_33__** %13, align 8
  %34 = load %struct.TYPE_33__*, %struct.TYPE_33__** %13, align 8
  %35 = icmp ne %struct.TYPE_33__* %34, null
  br i1 %35, label %36, label %47

36:                                               ; preds = %20
  %37 = load i32, i32* %5, align 4
  %38 = load %struct.TYPE_36__*, %struct.TYPE_36__** %8, align 8
  %39 = load %struct.TYPE_33__*, %struct.TYPE_33__** %13, align 8
  %40 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i8*, i8** %11, align 8
  %43 = call i32 @BAD_CAST(i8* %42)
  %44 = call i32 @get_create_encoder(i32 %37, %struct.TYPE_36__* %38, i32 %41, i32 %43)
  %45 = load %struct.TYPE_36__*, %struct.TYPE_36__** %8, align 8
  %46 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %45, i32 0, i32 0
  store i32 %44, i32* %46, align 4
  br label %47

47:                                               ; preds = %36, %20
  %48 = load i8*, i8** %11, align 8
  %49 = icmp ne i8* %48, null
  br i1 %49, label %50, label %53

50:                                               ; preds = %47
  %51 = load i8*, i8** %11, align 8
  %52 = call i32 @efree(i8* %51)
  br label %53

53:                                               ; preds = %50, %47
  %54 = load i8*, i8** %12, align 8
  %55 = icmp ne i8* %54, null
  br i1 %55, label %56, label %59

56:                                               ; preds = %53
  %57 = load i8*, i8** %12, align 8
  %58 = call i32 @efree(i8* %57)
  br label %59

59:                                               ; preds = %56, %53
  br label %63

60:                                               ; preds = %4
  %61 = load i32, i32* @E_ERROR, align 4
  %62 = call i32 @soap_error0(i32 %61, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.1, i64 0, i64 0))
  br label %63

63:                                               ; preds = %60, %59
  %64 = load %struct.TYPE_34__*, %struct.TYPE_34__** %7, align 8
  %65 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %64, i32 0, i32 2
  %66 = load %struct.TYPE_34__*, %struct.TYPE_34__** %65, align 8
  store %struct.TYPE_34__* %66, %struct.TYPE_34__** %10, align 8
  %67 = load %struct.TYPE_34__*, %struct.TYPE_34__** %10, align 8
  %68 = icmp ne %struct.TYPE_34__* %67, null
  br i1 %68, label %69, label %77

69:                                               ; preds = %63
  %70 = load %struct.TYPE_34__*, %struct.TYPE_34__** %10, align 8
  %71 = call i64 @node_is_equal(%struct.TYPE_34__* %70, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0))
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %77

73:                                               ; preds = %69
  %74 = load %struct.TYPE_34__*, %struct.TYPE_34__** %10, align 8
  %75 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %74, i32 0, i32 1
  %76 = load %struct.TYPE_34__*, %struct.TYPE_34__** %75, align 8
  store %struct.TYPE_34__* %76, %struct.TYPE_34__** %10, align 8
  br label %77

77:                                               ; preds = %73, %69, %63
  %78 = load %struct.TYPE_34__*, %struct.TYPE_34__** %10, align 8
  %79 = icmp ne %struct.TYPE_34__* %78, null
  br i1 %79, label %80, label %136

80:                                               ; preds = %77
  %81 = load %struct.TYPE_34__*, %struct.TYPE_34__** %10, align 8
  %82 = call i64 @node_is_equal(%struct.TYPE_34__* %81, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %93

84:                                               ; preds = %80
  %85 = load i32, i32* %5, align 4
  %86 = load %struct.TYPE_35__*, %struct.TYPE_35__** %6, align 8
  %87 = load %struct.TYPE_34__*, %struct.TYPE_34__** %10, align 8
  %88 = load %struct.TYPE_36__*, %struct.TYPE_36__** %8, align 8
  %89 = call i32 @schema_group(i32 %85, %struct.TYPE_35__* %86, %struct.TYPE_34__* %87, %struct.TYPE_36__* %88, i32* null)
  %90 = load %struct.TYPE_34__*, %struct.TYPE_34__** %10, align 8
  %91 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %90, i32 0, i32 1
  %92 = load %struct.TYPE_34__*, %struct.TYPE_34__** %91, align 8
  store %struct.TYPE_34__* %92, %struct.TYPE_34__** %10, align 8
  br label %135

93:                                               ; preds = %80
  %94 = load %struct.TYPE_34__*, %struct.TYPE_34__** %10, align 8
  %95 = call i64 @node_is_equal(%struct.TYPE_34__* %94, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0))
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %106

97:                                               ; preds = %93
  %98 = load i32, i32* %5, align 4
  %99 = load %struct.TYPE_35__*, %struct.TYPE_35__** %6, align 8
  %100 = load %struct.TYPE_34__*, %struct.TYPE_34__** %10, align 8
  %101 = load %struct.TYPE_36__*, %struct.TYPE_36__** %8, align 8
  %102 = call i32 @schema_all(i32 %98, %struct.TYPE_35__* %99, %struct.TYPE_34__* %100, %struct.TYPE_36__* %101, i32* null)
  %103 = load %struct.TYPE_34__*, %struct.TYPE_34__** %10, align 8
  %104 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %103, i32 0, i32 1
  %105 = load %struct.TYPE_34__*, %struct.TYPE_34__** %104, align 8
  store %struct.TYPE_34__* %105, %struct.TYPE_34__** %10, align 8
  br label %134

106:                                              ; preds = %93
  %107 = load %struct.TYPE_34__*, %struct.TYPE_34__** %10, align 8
  %108 = call i64 @node_is_equal(%struct.TYPE_34__* %107, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0))
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %119

110:                                              ; preds = %106
  %111 = load i32, i32* %5, align 4
  %112 = load %struct.TYPE_35__*, %struct.TYPE_35__** %6, align 8
  %113 = load %struct.TYPE_34__*, %struct.TYPE_34__** %10, align 8
  %114 = load %struct.TYPE_36__*, %struct.TYPE_36__** %8, align 8
  %115 = call i32 @schema_choice(i32 %111, %struct.TYPE_35__* %112, %struct.TYPE_34__* %113, %struct.TYPE_36__* %114, i32* null)
  %116 = load %struct.TYPE_34__*, %struct.TYPE_34__** %10, align 8
  %117 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %116, i32 0, i32 1
  %118 = load %struct.TYPE_34__*, %struct.TYPE_34__** %117, align 8
  store %struct.TYPE_34__* %118, %struct.TYPE_34__** %10, align 8
  br label %133

119:                                              ; preds = %106
  %120 = load %struct.TYPE_34__*, %struct.TYPE_34__** %10, align 8
  %121 = call i64 @node_is_equal(%struct.TYPE_34__* %120, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0))
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %132

123:                                              ; preds = %119
  %124 = load i32, i32* %5, align 4
  %125 = load %struct.TYPE_35__*, %struct.TYPE_35__** %6, align 8
  %126 = load %struct.TYPE_34__*, %struct.TYPE_34__** %10, align 8
  %127 = load %struct.TYPE_36__*, %struct.TYPE_36__** %8, align 8
  %128 = call i32 @schema_sequence(i32 %124, %struct.TYPE_35__* %125, %struct.TYPE_34__* %126, %struct.TYPE_36__* %127, i32* null)
  %129 = load %struct.TYPE_34__*, %struct.TYPE_34__** %10, align 8
  %130 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %129, i32 0, i32 1
  %131 = load %struct.TYPE_34__*, %struct.TYPE_34__** %130, align 8
  store %struct.TYPE_34__* %131, %struct.TYPE_34__** %10, align 8
  br label %132

132:                                              ; preds = %123, %119
  br label %133

133:                                              ; preds = %132, %110
  br label %134

134:                                              ; preds = %133, %97
  br label %135

135:                                              ; preds = %134, %84
  br label %136

136:                                              ; preds = %135, %77
  br label %137

137:                                              ; preds = %176, %136
  %138 = load %struct.TYPE_34__*, %struct.TYPE_34__** %10, align 8
  %139 = icmp ne %struct.TYPE_34__* %138, null
  br i1 %139, label %140, label %180

140:                                              ; preds = %137
  %141 = load %struct.TYPE_34__*, %struct.TYPE_34__** %10, align 8
  %142 = call i64 @node_is_equal(%struct.TYPE_34__* %141, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0))
  %143 = icmp ne i64 %142, 0
  br i1 %143, label %144, label %150

144:                                              ; preds = %140
  %145 = load i32, i32* %5, align 4
  %146 = load %struct.TYPE_35__*, %struct.TYPE_35__** %6, align 8
  %147 = load %struct.TYPE_34__*, %struct.TYPE_34__** %10, align 8
  %148 = load %struct.TYPE_36__*, %struct.TYPE_36__** %8, align 8
  %149 = call i32 @schema_attribute(i32 %145, %struct.TYPE_35__* %146, %struct.TYPE_34__* %147, %struct.TYPE_36__* %148, i32* null)
  br label %176

150:                                              ; preds = %140
  %151 = load %struct.TYPE_34__*, %struct.TYPE_34__** %10, align 8
  %152 = call i64 @node_is_equal(%struct.TYPE_34__* %151, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.8, i64 0, i64 0))
  %153 = icmp ne i64 %152, 0
  br i1 %153, label %154, label %160

154:                                              ; preds = %150
  %155 = load i32, i32* %5, align 4
  %156 = load %struct.TYPE_35__*, %struct.TYPE_35__** %6, align 8
  %157 = load %struct.TYPE_34__*, %struct.TYPE_34__** %10, align 8
  %158 = load %struct.TYPE_36__*, %struct.TYPE_36__** %8, align 8
  %159 = call i32 @schema_attributeGroup(i32 %155, %struct.TYPE_35__* %156, %struct.TYPE_34__* %157, %struct.TYPE_36__* %158, i32* null)
  br label %175

160:                                              ; preds = %150
  %161 = load %struct.TYPE_34__*, %struct.TYPE_34__** %10, align 8
  %162 = call i64 @node_is_equal(%struct.TYPE_34__* %161, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.9, i64 0, i64 0))
  %163 = icmp ne i64 %162, 0
  br i1 %163, label %164, label %168

164:                                              ; preds = %160
  %165 = load %struct.TYPE_34__*, %struct.TYPE_34__** %10, align 8
  %166 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %165, i32 0, i32 1
  %167 = load %struct.TYPE_34__*, %struct.TYPE_34__** %166, align 8
  store %struct.TYPE_34__* %167, %struct.TYPE_34__** %10, align 8
  br label %180

168:                                              ; preds = %160
  %169 = load i32, i32* @E_ERROR, align 4
  %170 = load %struct.TYPE_34__*, %struct.TYPE_34__** %10, align 8
  %171 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %170, i32 0, i32 0
  %172 = load i32, i32* %171, align 8
  %173 = call i32 @soap_error1(i32 %169, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.10, i64 0, i64 0), i32 %172)
  br label %174

174:                                              ; preds = %168
  br label %175

175:                                              ; preds = %174, %154
  br label %176

176:                                              ; preds = %175, %144
  %177 = load %struct.TYPE_34__*, %struct.TYPE_34__** %10, align 8
  %178 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %177, i32 0, i32 1
  %179 = load %struct.TYPE_34__*, %struct.TYPE_34__** %178, align 8
  store %struct.TYPE_34__* %179, %struct.TYPE_34__** %10, align 8
  br label %137

180:                                              ; preds = %164, %137
  %181 = load %struct.TYPE_34__*, %struct.TYPE_34__** %10, align 8
  %182 = icmp ne %struct.TYPE_34__* %181, null
  br i1 %182, label %183, label %189

183:                                              ; preds = %180
  %184 = load i32, i32* @E_ERROR, align 4
  %185 = load %struct.TYPE_34__*, %struct.TYPE_34__** %10, align 8
  %186 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %185, i32 0, i32 0
  %187 = load i32, i32* %186, align 8
  %188 = call i32 @soap_error1(i32 %184, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.10, i64 0, i64 0), i32 %187)
  br label %189

189:                                              ; preds = %183, %180
  %190 = load i32, i32* @TRUE, align 4
  ret i32 %190
}

declare dso_local %struct.TYPE_35__* @get_attribute(i32, i8*) #1

declare dso_local i32 @parse_namespace(i32, i8**, i8**) #1

declare dso_local %struct.TYPE_33__* @xmlSearchNs(i32, %struct.TYPE_34__*, i32) #1

declare dso_local i32 @BAD_CAST(i8*) #1

declare dso_local i32 @get_create_encoder(i32, %struct.TYPE_36__*, i32, i32) #1

declare dso_local i32 @efree(i8*) #1

declare dso_local i32 @soap_error0(i32, i8*) #1

declare dso_local i64 @node_is_equal(%struct.TYPE_34__*, i8*) #1

declare dso_local i32 @schema_group(i32, %struct.TYPE_35__*, %struct.TYPE_34__*, %struct.TYPE_36__*, i32*) #1

declare dso_local i32 @schema_all(i32, %struct.TYPE_35__*, %struct.TYPE_34__*, %struct.TYPE_36__*, i32*) #1

declare dso_local i32 @schema_choice(i32, %struct.TYPE_35__*, %struct.TYPE_34__*, %struct.TYPE_36__*, i32*) #1

declare dso_local i32 @schema_sequence(i32, %struct.TYPE_35__*, %struct.TYPE_34__*, %struct.TYPE_36__*, i32*) #1

declare dso_local i32 @schema_attribute(i32, %struct.TYPE_35__*, %struct.TYPE_34__*, %struct.TYPE_36__*, i32*) #1

declare dso_local i32 @schema_attributeGroup(i32, %struct.TYPE_35__*, %struct.TYPE_34__*, %struct.TYPE_36__*, i32*) #1

declare dso_local i32 @soap_error1(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
