; ModuleID = '/home/carl/AnghaBench/radare2/libr/bin/mangling/cxx/extr_cp-demangle.c_d_special_name.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/bin/mangling/cxx/extr_cp-demangle.c_d_special_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.demangle_component = type { i32 }
%struct.d_info = type { i32 }

@DEMANGLE_COMPONENT_VTABLE = common dso_local global i32 0, align 4
@DEMANGLE_COMPONENT_VTT = common dso_local global i32 0, align 4
@DEMANGLE_COMPONENT_TYPEINFO = common dso_local global i32 0, align 4
@DEMANGLE_COMPONENT_TYPEINFO_NAME = common dso_local global i32 0, align 4
@DEMANGLE_COMPONENT_THUNK = common dso_local global i32 0, align 4
@DEMANGLE_COMPONENT_VIRTUAL_THUNK = common dso_local global i32 0, align 4
@DEMANGLE_COMPONENT_COVARIANT_THUNK = common dso_local global i32 0, align 4
@DEMANGLE_COMPONENT_CONSTRUCTION_VTABLE = common dso_local global i32 0, align 4
@DEMANGLE_COMPONENT_TYPEINFO_FN = common dso_local global i32 0, align 4
@DEMANGLE_COMPONENT_JAVA_CLASS = common dso_local global i32 0, align 4
@DEMANGLE_COMPONENT_TLS_INIT = common dso_local global i32 0, align 4
@DEMANGLE_COMPONENT_TLS_WRAPPER = common dso_local global i32 0, align 4
@DEMANGLE_COMPONENT_TPARM_OBJ = common dso_local global i32 0, align 4
@DEMANGLE_COMPONENT_GUARD = common dso_local global i32 0, align 4
@DEMANGLE_COMPONENT_REFTEMP = common dso_local global i32 0, align 4
@DEMANGLE_COMPONENT_HIDDEN_ALIAS = common dso_local global i32 0, align 4
@DEMANGLE_COMPONENT_NONTRANSACTION_CLONE = common dso_local global i32 0, align 4
@DEMANGLE_COMPONENT_TRANSACTION_CLONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.demangle_component* (%struct.d_info*)* @d_special_name to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.demangle_component* @d_special_name(%struct.d_info* %0) #0 {
  %2 = alloca %struct.demangle_component*, align 8
  %3 = alloca %struct.d_info*, align 8
  %4 = alloca %struct.demangle_component*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.demangle_component*, align 8
  %7 = alloca %struct.demangle_component*, align 8
  store %struct.d_info* %0, %struct.d_info** %3, align 8
  %8 = load %struct.d_info*, %struct.d_info** %3, align 8
  %9 = getelementptr inbounds %struct.d_info, %struct.d_info* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = add nsw i32 %10, 20
  store i32 %11, i32* %9, align 4
  %12 = load %struct.d_info*, %struct.d_info** %3, align 8
  %13 = call i64 @d_check_char(%struct.d_info* %12, i8 signext 84)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %144

15:                                               ; preds = %1
  %16 = load %struct.d_info*, %struct.d_info** %3, align 8
  %17 = call i32 @d_next_char(%struct.d_info* %16)
  switch i32 %17, label %143 [
    i32 86, label %18
    i32 84, label %28
    i32 73, label %38
    i32 83, label %44
    i32 104, label %50
    i32 118, label %61
    i32 99, label %72
    i32 67, label %88
    i32 70, label %113
    i32 74, label %119
    i32 72, label %125
    i32 87, label %131
    i32 65, label %137
  ]

18:                                               ; preds = %15
  %19 = load %struct.d_info*, %struct.d_info** %3, align 8
  %20 = getelementptr inbounds %struct.d_info, %struct.d_info* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = sub nsw i32 %21, 5
  store i32 %22, i32* %20, align 4
  %23 = load %struct.d_info*, %struct.d_info** %3, align 8
  %24 = load i32, i32* @DEMANGLE_COMPONENT_VTABLE, align 4
  %25 = load %struct.d_info*, %struct.d_info** %3, align 8
  %26 = call %struct.demangle_component* @cplus_demangle_type(%struct.d_info* %25)
  %27 = call %struct.demangle_component* @d_make_comp(%struct.d_info* %23, i32 %24, %struct.demangle_component* %26, %struct.demangle_component* null)
  store %struct.demangle_component* %27, %struct.demangle_component** %2, align 8
  br label %193

28:                                               ; preds = %15
  %29 = load %struct.d_info*, %struct.d_info** %3, align 8
  %30 = getelementptr inbounds %struct.d_info, %struct.d_info* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = sub nsw i32 %31, 10
  store i32 %32, i32* %30, align 4
  %33 = load %struct.d_info*, %struct.d_info** %3, align 8
  %34 = load i32, i32* @DEMANGLE_COMPONENT_VTT, align 4
  %35 = load %struct.d_info*, %struct.d_info** %3, align 8
  %36 = call %struct.demangle_component* @cplus_demangle_type(%struct.d_info* %35)
  %37 = call %struct.demangle_component* @d_make_comp(%struct.d_info* %33, i32 %34, %struct.demangle_component* %36, %struct.demangle_component* null)
  store %struct.demangle_component* %37, %struct.demangle_component** %2, align 8
  br label %193

38:                                               ; preds = %15
  %39 = load %struct.d_info*, %struct.d_info** %3, align 8
  %40 = load i32, i32* @DEMANGLE_COMPONENT_TYPEINFO, align 4
  %41 = load %struct.d_info*, %struct.d_info** %3, align 8
  %42 = call %struct.demangle_component* @cplus_demangle_type(%struct.d_info* %41)
  %43 = call %struct.demangle_component* @d_make_comp(%struct.d_info* %39, i32 %40, %struct.demangle_component* %42, %struct.demangle_component* null)
  store %struct.demangle_component* %43, %struct.demangle_component** %2, align 8
  br label %193

44:                                               ; preds = %15
  %45 = load %struct.d_info*, %struct.d_info** %3, align 8
  %46 = load i32, i32* @DEMANGLE_COMPONENT_TYPEINFO_NAME, align 4
  %47 = load %struct.d_info*, %struct.d_info** %3, align 8
  %48 = call %struct.demangle_component* @cplus_demangle_type(%struct.d_info* %47)
  %49 = call %struct.demangle_component* @d_make_comp(%struct.d_info* %45, i32 %46, %struct.demangle_component* %48, %struct.demangle_component* null)
  store %struct.demangle_component* %49, %struct.demangle_component** %2, align 8
  br label %193

50:                                               ; preds = %15
  %51 = load %struct.d_info*, %struct.d_info** %3, align 8
  %52 = call i32 @d_call_offset(%struct.d_info* %51, i8 signext 104)
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %55, label %54

54:                                               ; preds = %50
  store %struct.demangle_component* null, %struct.demangle_component** %2, align 8
  br label %193

55:                                               ; preds = %50
  %56 = load %struct.d_info*, %struct.d_info** %3, align 8
  %57 = load i32, i32* @DEMANGLE_COMPONENT_THUNK, align 4
  %58 = load %struct.d_info*, %struct.d_info** %3, align 8
  %59 = call %struct.demangle_component* @d_encoding(%struct.d_info* %58, i32 0)
  %60 = call %struct.demangle_component* @d_make_comp(%struct.d_info* %56, i32 %57, %struct.demangle_component* %59, %struct.demangle_component* null)
  store %struct.demangle_component* %60, %struct.demangle_component** %2, align 8
  br label %193

61:                                               ; preds = %15
  %62 = load %struct.d_info*, %struct.d_info** %3, align 8
  %63 = call i32 @d_call_offset(%struct.d_info* %62, i8 signext 118)
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %66, label %65

65:                                               ; preds = %61
  store %struct.demangle_component* null, %struct.demangle_component** %2, align 8
  br label %193

66:                                               ; preds = %61
  %67 = load %struct.d_info*, %struct.d_info** %3, align 8
  %68 = load i32, i32* @DEMANGLE_COMPONENT_VIRTUAL_THUNK, align 4
  %69 = load %struct.d_info*, %struct.d_info** %3, align 8
  %70 = call %struct.demangle_component* @d_encoding(%struct.d_info* %69, i32 0)
  %71 = call %struct.demangle_component* @d_make_comp(%struct.d_info* %67, i32 %68, %struct.demangle_component* %70, %struct.demangle_component* null)
  store %struct.demangle_component* %71, %struct.demangle_component** %2, align 8
  br label %193

72:                                               ; preds = %15
  %73 = load %struct.d_info*, %struct.d_info** %3, align 8
  %74 = call i32 @d_call_offset(%struct.d_info* %73, i8 signext 0)
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %77, label %76

76:                                               ; preds = %72
  store %struct.demangle_component* null, %struct.demangle_component** %2, align 8
  br label %193

77:                                               ; preds = %72
  %78 = load %struct.d_info*, %struct.d_info** %3, align 8
  %79 = call i32 @d_call_offset(%struct.d_info* %78, i8 signext 0)
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %82, label %81

81:                                               ; preds = %77
  store %struct.demangle_component* null, %struct.demangle_component** %2, align 8
  br label %193

82:                                               ; preds = %77
  %83 = load %struct.d_info*, %struct.d_info** %3, align 8
  %84 = load i32, i32* @DEMANGLE_COMPONENT_COVARIANT_THUNK, align 4
  %85 = load %struct.d_info*, %struct.d_info** %3, align 8
  %86 = call %struct.demangle_component* @d_encoding(%struct.d_info* %85, i32 0)
  %87 = call %struct.demangle_component* @d_make_comp(%struct.d_info* %83, i32 %84, %struct.demangle_component* %86, %struct.demangle_component* null)
  store %struct.demangle_component* %87, %struct.demangle_component** %2, align 8
  br label %193

88:                                               ; preds = %15
  %89 = load %struct.d_info*, %struct.d_info** %3, align 8
  %90 = call %struct.demangle_component* @cplus_demangle_type(%struct.d_info* %89)
  store %struct.demangle_component* %90, %struct.demangle_component** %4, align 8
  %91 = load %struct.d_info*, %struct.d_info** %3, align 8
  %92 = call i32 @d_number(%struct.d_info* %91)
  store i32 %92, i32* %5, align 4
  %93 = load i32, i32* %5, align 4
  %94 = icmp slt i32 %93, 0
  br i1 %94, label %95, label %96

95:                                               ; preds = %88
  store %struct.demangle_component* null, %struct.demangle_component** %2, align 8
  br label %193

96:                                               ; preds = %88
  %97 = load %struct.d_info*, %struct.d_info** %3, align 8
  %98 = call i64 @d_check_char(%struct.d_info* %97, i8 signext 95)
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %101, label %100

100:                                              ; preds = %96
  store %struct.demangle_component* null, %struct.demangle_component** %2, align 8
  br label %193

101:                                              ; preds = %96
  %102 = load %struct.d_info*, %struct.d_info** %3, align 8
  %103 = call %struct.demangle_component* @cplus_demangle_type(%struct.d_info* %102)
  store %struct.demangle_component* %103, %struct.demangle_component** %6, align 8
  %104 = load %struct.d_info*, %struct.d_info** %3, align 8
  %105 = getelementptr inbounds %struct.d_info, %struct.d_info* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = add nsw i32 %106, 5
  store i32 %107, i32* %105, align 4
  %108 = load %struct.d_info*, %struct.d_info** %3, align 8
  %109 = load i32, i32* @DEMANGLE_COMPONENT_CONSTRUCTION_VTABLE, align 4
  %110 = load %struct.demangle_component*, %struct.demangle_component** %6, align 8
  %111 = load %struct.demangle_component*, %struct.demangle_component** %4, align 8
  %112 = call %struct.demangle_component* @d_make_comp(%struct.d_info* %108, i32 %109, %struct.demangle_component* %110, %struct.demangle_component* %111)
  store %struct.demangle_component* %112, %struct.demangle_component** %2, align 8
  br label %193

113:                                              ; preds = %15
  %114 = load %struct.d_info*, %struct.d_info** %3, align 8
  %115 = load i32, i32* @DEMANGLE_COMPONENT_TYPEINFO_FN, align 4
  %116 = load %struct.d_info*, %struct.d_info** %3, align 8
  %117 = call %struct.demangle_component* @cplus_demangle_type(%struct.d_info* %116)
  %118 = call %struct.demangle_component* @d_make_comp(%struct.d_info* %114, i32 %115, %struct.demangle_component* %117, %struct.demangle_component* null)
  store %struct.demangle_component* %118, %struct.demangle_component** %2, align 8
  br label %193

119:                                              ; preds = %15
  %120 = load %struct.d_info*, %struct.d_info** %3, align 8
  %121 = load i32, i32* @DEMANGLE_COMPONENT_JAVA_CLASS, align 4
  %122 = load %struct.d_info*, %struct.d_info** %3, align 8
  %123 = call %struct.demangle_component* @cplus_demangle_type(%struct.d_info* %122)
  %124 = call %struct.demangle_component* @d_make_comp(%struct.d_info* %120, i32 %121, %struct.demangle_component* %123, %struct.demangle_component* null)
  store %struct.demangle_component* %124, %struct.demangle_component** %2, align 8
  br label %193

125:                                              ; preds = %15
  %126 = load %struct.d_info*, %struct.d_info** %3, align 8
  %127 = load i32, i32* @DEMANGLE_COMPONENT_TLS_INIT, align 4
  %128 = load %struct.d_info*, %struct.d_info** %3, align 8
  %129 = call %struct.demangle_component* @d_name(%struct.d_info* %128)
  %130 = call %struct.demangle_component* @d_make_comp(%struct.d_info* %126, i32 %127, %struct.demangle_component* %129, %struct.demangle_component* null)
  store %struct.demangle_component* %130, %struct.demangle_component** %2, align 8
  br label %193

131:                                              ; preds = %15
  %132 = load %struct.d_info*, %struct.d_info** %3, align 8
  %133 = load i32, i32* @DEMANGLE_COMPONENT_TLS_WRAPPER, align 4
  %134 = load %struct.d_info*, %struct.d_info** %3, align 8
  %135 = call %struct.demangle_component* @d_name(%struct.d_info* %134)
  %136 = call %struct.demangle_component* @d_make_comp(%struct.d_info* %132, i32 %133, %struct.demangle_component* %135, %struct.demangle_component* null)
  store %struct.demangle_component* %136, %struct.demangle_component** %2, align 8
  br label %193

137:                                              ; preds = %15
  %138 = load %struct.d_info*, %struct.d_info** %3, align 8
  %139 = load i32, i32* @DEMANGLE_COMPONENT_TPARM_OBJ, align 4
  %140 = load %struct.d_info*, %struct.d_info** %3, align 8
  %141 = call %struct.demangle_component* @d_template_arg(%struct.d_info* %140)
  %142 = call %struct.demangle_component* @d_make_comp(%struct.d_info* %138, i32 %139, %struct.demangle_component* %141, %struct.demangle_component* null)
  store %struct.demangle_component* %142, %struct.demangle_component** %2, align 8
  br label %193

143:                                              ; preds = %15
  store %struct.demangle_component* null, %struct.demangle_component** %2, align 8
  br label %193

144:                                              ; preds = %1
  %145 = load %struct.d_info*, %struct.d_info** %3, align 8
  %146 = call i64 @d_check_char(%struct.d_info* %145, i8 signext 71)
  %147 = icmp ne i64 %146, 0
  br i1 %147, label %148, label %192

148:                                              ; preds = %144
  %149 = load %struct.d_info*, %struct.d_info** %3, align 8
  %150 = call i32 @d_next_char(%struct.d_info* %149)
  switch i32 %150, label %191 [
    i32 86, label %151
    i32 82, label %157
    i32 65, label %166
    i32 84, label %172
    i32 114, label %188
  ]

151:                                              ; preds = %148
  %152 = load %struct.d_info*, %struct.d_info** %3, align 8
  %153 = load i32, i32* @DEMANGLE_COMPONENT_GUARD, align 4
  %154 = load %struct.d_info*, %struct.d_info** %3, align 8
  %155 = call %struct.demangle_component* @d_name(%struct.d_info* %154)
  %156 = call %struct.demangle_component* @d_make_comp(%struct.d_info* %152, i32 %153, %struct.demangle_component* %155, %struct.demangle_component* null)
  store %struct.demangle_component* %156, %struct.demangle_component** %2, align 8
  br label %193

157:                                              ; preds = %148
  %158 = load %struct.d_info*, %struct.d_info** %3, align 8
  %159 = call %struct.demangle_component* @d_name(%struct.d_info* %158)
  store %struct.demangle_component* %159, %struct.demangle_component** %7, align 8
  %160 = load %struct.d_info*, %struct.d_info** %3, align 8
  %161 = load i32, i32* @DEMANGLE_COMPONENT_REFTEMP, align 4
  %162 = load %struct.demangle_component*, %struct.demangle_component** %7, align 8
  %163 = load %struct.d_info*, %struct.d_info** %3, align 8
  %164 = call %struct.demangle_component* @d_number_component(%struct.d_info* %163)
  %165 = call %struct.demangle_component* @d_make_comp(%struct.d_info* %160, i32 %161, %struct.demangle_component* %162, %struct.demangle_component* %164)
  store %struct.demangle_component* %165, %struct.demangle_component** %2, align 8
  br label %193

166:                                              ; preds = %148
  %167 = load %struct.d_info*, %struct.d_info** %3, align 8
  %168 = load i32, i32* @DEMANGLE_COMPONENT_HIDDEN_ALIAS, align 4
  %169 = load %struct.d_info*, %struct.d_info** %3, align 8
  %170 = call %struct.demangle_component* @d_encoding(%struct.d_info* %169, i32 0)
  %171 = call %struct.demangle_component* @d_make_comp(%struct.d_info* %167, i32 %168, %struct.demangle_component* %170, %struct.demangle_component* null)
  store %struct.demangle_component* %171, %struct.demangle_component** %2, align 8
  br label %193

172:                                              ; preds = %148
  %173 = load %struct.d_info*, %struct.d_info** %3, align 8
  %174 = call i32 @d_next_char(%struct.d_info* %173)
  switch i32 %174, label %181 [
    i32 110, label %175
    i32 116, label %182
  ]

175:                                              ; preds = %172
  %176 = load %struct.d_info*, %struct.d_info** %3, align 8
  %177 = load i32, i32* @DEMANGLE_COMPONENT_NONTRANSACTION_CLONE, align 4
  %178 = load %struct.d_info*, %struct.d_info** %3, align 8
  %179 = call %struct.demangle_component* @d_encoding(%struct.d_info* %178, i32 0)
  %180 = call %struct.demangle_component* @d_make_comp(%struct.d_info* %176, i32 %177, %struct.demangle_component* %179, %struct.demangle_component* null)
  store %struct.demangle_component* %180, %struct.demangle_component** %2, align 8
  br label %193

181:                                              ; preds = %172
  br label %182

182:                                              ; preds = %172, %181
  %183 = load %struct.d_info*, %struct.d_info** %3, align 8
  %184 = load i32, i32* @DEMANGLE_COMPONENT_TRANSACTION_CLONE, align 4
  %185 = load %struct.d_info*, %struct.d_info** %3, align 8
  %186 = call %struct.demangle_component* @d_encoding(%struct.d_info* %185, i32 0)
  %187 = call %struct.demangle_component* @d_make_comp(%struct.d_info* %183, i32 %184, %struct.demangle_component* %186, %struct.demangle_component* null)
  store %struct.demangle_component* %187, %struct.demangle_component** %2, align 8
  br label %193

188:                                              ; preds = %148
  %189 = load %struct.d_info*, %struct.d_info** %3, align 8
  %190 = call %struct.demangle_component* @d_java_resource(%struct.d_info* %189)
  store %struct.demangle_component* %190, %struct.demangle_component** %2, align 8
  br label %193

191:                                              ; preds = %148
  store %struct.demangle_component* null, %struct.demangle_component** %2, align 8
  br label %193

192:                                              ; preds = %144
  store %struct.demangle_component* null, %struct.demangle_component** %2, align 8
  br label %193

193:                                              ; preds = %192, %191, %188, %182, %175, %166, %157, %151, %143, %137, %131, %125, %119, %113, %101, %100, %95, %82, %81, %76, %66, %65, %55, %54, %44, %38, %28, %18
  %194 = load %struct.demangle_component*, %struct.demangle_component** %2, align 8
  ret %struct.demangle_component* %194
}

declare dso_local i64 @d_check_char(%struct.d_info*, i8 signext) #1

declare dso_local i32 @d_next_char(%struct.d_info*) #1

declare dso_local %struct.demangle_component* @d_make_comp(%struct.d_info*, i32, %struct.demangle_component*, %struct.demangle_component*) #1

declare dso_local %struct.demangle_component* @cplus_demangle_type(%struct.d_info*) #1

declare dso_local i32 @d_call_offset(%struct.d_info*, i8 signext) #1

declare dso_local %struct.demangle_component* @d_encoding(%struct.d_info*, i32) #1

declare dso_local i32 @d_number(%struct.d_info*) #1

declare dso_local %struct.demangle_component* @d_name(%struct.d_info*) #1

declare dso_local %struct.demangle_component* @d_template_arg(%struct.d_info*) #1

declare dso_local %struct.demangle_component* @d_number_component(%struct.d_info*) #1

declare dso_local %struct.demangle_component* @d_java_resource(%struct.d_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
