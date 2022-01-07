; ModuleID = '/home/carl/AnghaBench/radare2/libr/core/extr_disasm.c_colorize_asm_string.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/core/extr_disasm.c_colorize_asm_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32 }
%struct.TYPE_13__ = type { i8*, i32, i32, %struct.TYPE_12__*, %struct.TYPE_11__, i32, i32, i32, i64, i32, i32 }
%struct.TYPE_12__ = type { i32, i32 }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_15__ = type { i32 }

@R_META_TYPE_HIGHLIGHT = common dso_local global i32 0, align 4
@R_ANAL_FCN_TYPE_NULL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"||\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"%s||%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.TYPE_14__*, %struct.TYPE_13__*, i32)* @colorize_asm_string to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @colorize_asm_string(%struct.TYPE_14__* %0, %struct.TYPE_13__* %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_14__*, align 8
  %6 = alloca %struct.TYPE_13__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_15__*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %5, align 8
  store %struct.TYPE_13__* %1, %struct.TYPE_13__** %6, align 8
  store i32 %2, i32* %7, align 4
  %17 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %18 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %17, i32 0, i32 0
  %19 = load i8*, i8** %18, align 8
  %20 = icmp ne i8* %19, null
  br i1 %20, label %21, label %25

21:                                               ; preds = %3
  %22 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %23 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %22, i32 0, i32 0
  %24 = load i8*, i8** %23, align 8
  br label %29

25:                                               ; preds = %3
  %26 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %27 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %26, i32 0, i32 10
  %28 = call i8* @r_asm_op_get_asm(i32* %27)
  br label %29

29:                                               ; preds = %25, %21
  %30 = phi i8* [ %24, %21 ], [ %28, %25 ]
  store i8* %30, i8** %8, align 8
  %31 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %32 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %31, i32 0, i32 3
  %33 = load %struct.TYPE_12__*, %struct.TYPE_12__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @R_META_TYPE_HIGHLIGHT, align 4
  %37 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %38 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %37, i32 0, i32 9
  %39 = load i32, i32* %38, align 8
  %40 = call i8* @r_meta_get_string(i32 %35, i32 %36, i32 %39)
  store i8* %40, i8** %9, align 8
  %41 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %42 = call i64 @line_highlighted(%struct.TYPE_13__* %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %29
  br label %57

45:                                               ; preds = %29
  %46 = load i8*, i8** %9, align 8
  %47 = icmp ne i8* %46, null
  br i1 %47, label %48, label %53

48:                                               ; preds = %45
  %49 = load i8*, i8** %9, align 8
  %50 = load i8, i8* %49, align 1
  %51 = sext i8 %50 to i32
  %52 = icmp ne i32 %51, 0
  br label %53

53:                                               ; preds = %48, %45
  %54 = phi i1 [ false, %45 ], [ %52, %48 ]
  %55 = zext i1 %54 to i64
  %56 = select i1 %54, i32 1, i32 0
  br label %57

57:                                               ; preds = %53, %44
  %58 = phi i32 [ 1, %44 ], [ %56, %53 ]
  store i32 %58, i32* %10, align 4
  %59 = load i8*, i8** %9, align 8
  %60 = call i32 @free(i8* %59)
  %61 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %62 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %61, i32 0, i32 8
  %63 = load i64, i64* %62, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %72

65:                                               ; preds = %57
  %66 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %67 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %68 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %67, i32 0, i32 7
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* @R_ANAL_FCN_TYPE_NULL, align 4
  %71 = call %struct.TYPE_15__* @fcnIn(%struct.TYPE_13__* %66, i32 %69, i32 %70)
  br label %73

72:                                               ; preds = %57
  br label %73

73:                                               ; preds = %72, %65
  %74 = phi %struct.TYPE_15__* [ %71, %65 ], [ null, %72 ]
  store %struct.TYPE_15__* %74, %struct.TYPE_15__** %11, align 8
  %75 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %76 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %75, i32 0, i32 6
  %77 = load i32, i32* %76, align 8
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %84

79:                                               ; preds = %73
  %80 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %81 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %80, i32 0, i32 5
  %82 = load i32, i32* %81, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %87, label %84

84:                                               ; preds = %79, %73
  %85 = load i8*, i8** %8, align 8
  %86 = call i8* @strdup(i8* %85)
  store i8* %86, i8** %4, align 8
  br label %209

87:                                               ; preds = %79
  %88 = load i32, i32* %7, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %100

90:                                               ; preds = %87
  %91 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %92 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %95 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %94, i32 0, i32 4
  %96 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = call i32 @r_print_color_op_type(i32 %93, i32 %97)
  %99 = call i32 @r_cons_strcat(i32 %98)
  br label %100

100:                                              ; preds = %90, %87
  %101 = load i8*, i8** %8, align 8
  %102 = call i8* @strstr(i8* %101, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  store i8* %102, i8** %12, align 8
  %103 = load i8*, i8** %12, align 8
  %104 = icmp ne i8* %103, null
  br i1 %104, label %105, label %185

105:                                              ; preds = %100
  %106 = load i8*, i8** %8, align 8
  %107 = load i8*, i8** %12, align 8
  %108 = load i8*, i8** %8, align 8
  %109 = ptrtoint i8* %107 to i64
  %110 = ptrtoint i8* %108 to i64
  %111 = sub i64 %109, %110
  %112 = trunc i64 %111 to i32
  %113 = call i8* @r_str_ndup(i8* %106, i32 %112)
  store i8* %113, i8** %14, align 8
  %114 = load i8*, i8** %12, align 8
  %115 = getelementptr inbounds i8, i8* %114, i64 2
  %116 = call i8* @strdup(i8* %115)
  store i8* %116, i8** %16, align 8
  %117 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %118 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %117, i32 0, i32 3
  %119 = load %struct.TYPE_12__*, %struct.TYPE_12__** %118, align 8
  %120 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = load i8*, i8** %14, align 8
  %123 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %124 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %123, i32 0, i32 2
  %125 = load i32, i32* %124, align 4
  %126 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %127 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %126, i32 0, i32 1
  %128 = load i32, i32* %127, align 8
  %129 = load i32, i32* %10, align 4
  %130 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %131 = icmp ne %struct.TYPE_15__* %130, null
  br i1 %131, label %132, label %136

132:                                              ; preds = %105
  %133 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %134 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 4
  br label %137

136:                                              ; preds = %105
  br label %137

137:                                              ; preds = %136, %132
  %138 = phi i32 [ %135, %132 ], [ 0, %136 ]
  %139 = call i8* @r_print_colorize_opcode(i32 %121, i8* %122, i32 %125, i32 %128, i32 %129, i32 %138)
  store i8* %139, i8** %13, align 8
  %140 = load i8*, i8** %14, align 8
  %141 = call i32 @free(i8* %140)
  %142 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %143 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %142, i32 0, i32 3
  %144 = load %struct.TYPE_12__*, %struct.TYPE_12__** %143, align 8
  %145 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 4
  %147 = load i8*, i8** %16, align 8
  %148 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %149 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %148, i32 0, i32 2
  %150 = load i32, i32* %149, align 4
  %151 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %152 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %151, i32 0, i32 1
  %153 = load i32, i32* %152, align 8
  %154 = load i32, i32* %10, align 4
  %155 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %156 = icmp ne %struct.TYPE_15__* %155, null
  br i1 %156, label %157, label %161

157:                                              ; preds = %137
  %158 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %159 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 4
  br label %162

161:                                              ; preds = %137
  br label %162

162:                                              ; preds = %161, %157
  %163 = phi i32 [ %160, %157 ], [ 0, %161 ]
  %164 = call i8* @r_print_colorize_opcode(i32 %146, i8* %147, i32 %150, i32 %153, i32 %154, i32 %163)
  store i8* %164, i8** %15, align 8
  %165 = load i8*, i8** %16, align 8
  %166 = call i32 @free(i8* %165)
  %167 = load i8*, i8** %13, align 8
  %168 = icmp ne i8* %167, null
  br i1 %168, label %171, label %169

169:                                              ; preds = %162
  %170 = call i8* @strdup(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0))
  store i8* %170, i8** %13, align 8
  br label %171

171:                                              ; preds = %169, %162
  %172 = load i8*, i8** %15, align 8
  %173 = icmp ne i8* %172, null
  br i1 %173, label %176, label %174

174:                                              ; preds = %171
  %175 = call i8* @strdup(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0))
  store i8* %175, i8** %15, align 8
  br label %176

176:                                              ; preds = %174, %171
  %177 = load i8*, i8** %13, align 8
  %178 = load i8*, i8** %15, align 8
  %179 = call i8* @r_str_newf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i8* %177, i8* %178)
  store i8* %179, i8** %8, align 8
  %180 = load i8*, i8** %13, align 8
  %181 = call i32 @free(i8* %180)
  %182 = load i8*, i8** %15, align 8
  %183 = call i32 @free(i8* %182)
  %184 = load i8*, i8** %8, align 8
  store i8* %184, i8** %4, align 8
  br label %209

185:                                              ; preds = %100
  %186 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %187 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %186, i32 0, i32 3
  %188 = load %struct.TYPE_12__*, %struct.TYPE_12__** %187, align 8
  %189 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %188, i32 0, i32 0
  %190 = load i32, i32* %189, align 4
  %191 = load i8*, i8** %8, align 8
  %192 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %193 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %192, i32 0, i32 2
  %194 = load i32, i32* %193, align 4
  %195 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %196 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %195, i32 0, i32 1
  %197 = load i32, i32* %196, align 8
  %198 = load i32, i32* %10, align 4
  %199 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %200 = icmp ne %struct.TYPE_15__* %199, null
  br i1 %200, label %201, label %205

201:                                              ; preds = %185
  %202 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %203 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %202, i32 0, i32 0
  %204 = load i32, i32* %203, align 4
  br label %206

205:                                              ; preds = %185
  br label %206

206:                                              ; preds = %205, %201
  %207 = phi i32 [ %204, %201 ], [ 0, %205 ]
  %208 = call i8* @r_print_colorize_opcode(i32 %190, i8* %191, i32 %194, i32 %197, i32 %198, i32 %207)
  store i8* %208, i8** %4, align 8
  br label %209

209:                                              ; preds = %206, %176, %84
  %210 = load i8*, i8** %4, align 8
  ret i8* %210
}

declare dso_local i8* @r_asm_op_get_asm(i32*) #1

declare dso_local i8* @r_meta_get_string(i32, i32, i32) #1

declare dso_local i64 @line_highlighted(%struct.TYPE_13__*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local %struct.TYPE_15__* @fcnIn(%struct.TYPE_13__*, i32, i32) #1

declare dso_local i8* @strdup(i8*) #1

declare dso_local i32 @r_cons_strcat(i32) #1

declare dso_local i32 @r_print_color_op_type(i32, i32) #1

declare dso_local i8* @strstr(i8*, i8*) #1

declare dso_local i8* @r_str_ndup(i8*, i32) #1

declare dso_local i8* @r_print_colorize_opcode(i32, i8*, i32, i32, i32, i32) #1

declare dso_local i8* @r_str_newf(i8*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
