; ModuleID = '/home/carl/AnghaBench/radare2/libr/core/extr_panels.c___update_pdc_contents.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/core/extr_panels.c___update_pdc_contents.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { %struct.TYPE_15__*, i32, i32, i32, %struct.TYPE_17__* }
%struct.TYPE_15__ = type { i32*, i32* }
%struct.TYPE_17__ = type { i32* }
%struct.TYPE_18__ = type { %struct.TYPE_16__*, %struct.TYPE_14__* }
%struct.TYPE_16__ = type { i64 }
%struct.TYPE_14__ = type { i32, %struct.TYPE_13__, i32 }
%struct.TYPE_13__ = type { i32, i32, i32, i32 }
%struct.TYPE_20__ = type { i32 }

@R_ANAL_FCN_TYPE_NULL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"cmd.pdc\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @__update_pdc_contents(%struct.TYPE_19__* %0, %struct.TYPE_18__* %1, i8* %2) #0 {
  %4 = alloca %struct.TYPE_19__*, align 8
  %5 = alloca %struct.TYPE_18__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.TYPE_17__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_20__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i8*, align 8
  store %struct.TYPE_19__* %0, %struct.TYPE_19__** %4, align 8
  store %struct.TYPE_18__* %1, %struct.TYPE_18__** %5, align 8
  store i8* %2, i8** %6, align 8
  %22 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %22, i32 0, i32 4
  %24 = load %struct.TYPE_17__*, %struct.TYPE_17__** %23, align 8
  store %struct.TYPE_17__* %24, %struct.TYPE_17__** %7, align 8
  %25 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %26 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %25, i32 0, i32 0
  %27 = load i32*, i32** %26, align 8
  store i32* %27, i32** %8, align 8
  %28 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %28, i32 0, i32 3
  %30 = load i32, i32* %29, align 8
  %31 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @R_ANAL_FCN_TYPE_NULL, align 4
  %35 = call %struct.TYPE_20__* @r_anal_get_fcn_in(i32 %30, i32 %33, i32 %34)
  store %struct.TYPE_20__* %35, %struct.TYPE_20__** %9, align 8
  %36 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %37 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %36, i32 0, i32 1
  %38 = load %struct.TYPE_14__*, %struct.TYPE_14__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  store i32 %40, i32* %10, align 4
  %41 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %42 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %41, i32 0, i32 1
  %43 = load %struct.TYPE_14__*, %struct.TYPE_14__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @R_MAX(i32 %45, i32 0)
  store i32 %46, i32* %11, align 4
  %47 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %48 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %47, i32 0, i32 1
  %49 = load %struct.TYPE_14__*, %struct.TYPE_14__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  store i32 %52, i32* %12, align 4
  %53 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %54 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %53, i32 0, i32 1
  %55 = load %struct.TYPE_14__*, %struct.TYPE_14__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  store i32 %58, i32* %13, align 4
  %59 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %60 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %59, i32 0, i32 1
  %61 = load %struct.TYPE_14__*, %struct.TYPE_14__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %61, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 4
  store i32 %64, i32* %14, align 4
  %65 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %66 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %65, i32 0, i32 1
  %67 = load %struct.TYPE_14__*, %struct.TYPE_14__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %67, i32 0, i32 1
  %69 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %68, i32 0, i32 3
  %70 = load i32, i32* %69, align 4
  store i32 %70, i32* %15, align 4
  store i8* null, i8** %16, align 8
  %71 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %72 = icmp ne %struct.TYPE_20__* %71, null
  br i1 %72, label %73, label %132

73:                                               ; preds = %3
  %74 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %75 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %74, i32 0, i32 0
  %76 = load %struct.TYPE_15__*, %struct.TYPE_15__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %76, i32 0, i32 1
  %78 = load i32*, i32** %77, align 8
  %79 = icmp ne i32* %78, null
  br i1 %79, label %80, label %93

80:                                               ; preds = %73
  %81 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %82 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %81, i32 0, i32 0
  %83 = load %struct.TYPE_15__*, %struct.TYPE_15__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %83, i32 0, i32 1
  %85 = load i32*, i32** %84, align 8
  %86 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %87 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = call i32* @r_num_as_string(i32* null, i32 %88, i32 0)
  %90 = load i8*, i8** %6, align 8
  %91 = call i32* @r_str_new(i8* %90)
  %92 = call i32 @sdb_ptr_set(i32* %85, i32* %89, i32* %91, i32 0)
  br label %131

93:                                               ; preds = %73
  %94 = call i32* (...) @sdb_new0()
  store i32* %94, i32** %17, align 8
  %95 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %96 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 8
  %98 = call i8* @r_config_get(i32 %97, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  store i8* %98, i8** %18, align 8
  %99 = load i32*, i32** %17, align 8
  %100 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %101 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = call i32* @r_num_as_string(i32* null, i32 %102, i32 0)
  %104 = load i8*, i8** %6, align 8
  %105 = call i32* @r_str_new(i8* %104)
  %106 = call i32 @sdb_ptr_set(i32* %99, i32* %103, i32* %105, i32 0)
  %107 = load i32*, i32** %17, align 8
  %108 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %109 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %108, i32 0, i32 0
  %110 = load %struct.TYPE_15__*, %struct.TYPE_15__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %110, i32 0, i32 1
  store i32* %107, i32** %111, align 8
  %112 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %113 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %112, i32 0, i32 0
  %114 = load %struct.TYPE_15__*, %struct.TYPE_15__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %114, i32 0, i32 0
  %116 = load i32*, i32** %115, align 8
  %117 = load i8*, i8** %18, align 8
  %118 = call i32 @sdb_exists(i32* %116, i8* %117)
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %130, label %120

120:                                              ; preds = %93
  %121 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %122 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %121, i32 0, i32 0
  %123 = load %struct.TYPE_15__*, %struct.TYPE_15__** %122, align 8
  %124 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %123, i32 0, i32 0
  %125 = load i32*, i32** %124, align 8
  %126 = load i8*, i8** %18, align 8
  %127 = call i32* @r_str_new(i8* %126)
  %128 = load i32*, i32** %17, align 8
  %129 = call i32 @sdb_ptr_set(i32* %125, i32* %127, i32* %128, i32 0)
  br label %130

130:                                              ; preds = %120, %93
  br label %131

131:                                              ; preds = %130, %80
  br label %132

132:                                              ; preds = %131, %3
  %133 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %134 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %133, i32 0, i32 0
  %135 = load %struct.TYPE_16__*, %struct.TYPE_16__** %134, align 8
  %136 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %135, i32 0, i32 0
  %137 = load i64, i64* %136, align 8
  %138 = icmp ne i64 %137, 0
  br i1 %138, label %139, label %142

139:                                              ; preds = %132
  %140 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %141 = call i32 @__reset_scroll_pos(%struct.TYPE_18__* %140)
  br label %142

142:                                              ; preds = %139, %132
  %143 = load i32*, i32** %8, align 8
  %144 = load i32, i32* %12, align 4
  %145 = add nsw i32 %144, 2
  %146 = load i32, i32* %13, align 4
  %147 = add nsw i32 %146, 2
  %148 = call i32 @r_cons_canvas_gotoxy(i32* %143, i32 %145, i32 %147)
  %149 = load i32, i32* %10, align 4
  %150 = icmp slt i32 %149, 0
  br i1 %150, label %151, label %186

151:                                              ; preds = %142
  %152 = call i64 @r_str_pad(i8 signext 32, i32 128)
  %153 = inttoptr i64 %152 to i8*
  store i8* %153, i8** %19, align 8
  %154 = load i32, i32* %10, align 4
  %155 = sub nsw i32 0, %154
  %156 = load i8*, i8** %19, align 8
  %157 = call i64 @strlen(i8* %156)
  %158 = sub nsw i64 %157, 1
  %159 = call i32 @R_MIN(i32 %155, i64 %158)
  store i32 %159, i32* %20, align 4
  %160 = load i8*, i8** %19, align 8
  %161 = load i32, i32* %20, align 4
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds i8, i8* %160, i64 %162
  store i8 0, i8* %163, align 1
  %164 = load i8*, i8** %6, align 8
  %165 = call i32* @r_str_new(i8* %164)
  %166 = load i32, i32* %11, align 4
  %167 = load i32, i32* %14, align 4
  %168 = load i32, i32* %10, align 4
  %169 = add nsw i32 %167, %168
  %170 = sub nsw i32 %169, 3
  %171 = load i32, i32* %15, align 4
  %172 = sub nsw i32 %171, 2
  %173 = load i32, i32* %11, align 4
  %174 = add nsw i32 %172, %173
  %175 = call i8* @r_str_ansi_crop(i32* %165, i32 0, i32 %166, i32 %170, i32 %174)
  store i8* %175, i8** %16, align 8
  %176 = load i8*, i8** %16, align 8
  %177 = load i8*, i8** %19, align 8
  %178 = call i8* @r_str_prefix_all(i8* %176, i8* %177)
  store i8* %178, i8** %21, align 8
  %179 = load i8*, i8** %21, align 8
  %180 = icmp ne i8* %179, null
  br i1 %180, label %181, label %185

181:                                              ; preds = %151
  %182 = load i8*, i8** %16, align 8
  %183 = call i32 @free(i8* %182)
  %184 = load i8*, i8** %21, align 8
  store i8* %184, i8** %16, align 8
  br label %185

185:                                              ; preds = %181, %151
  br label %200

186:                                              ; preds = %142
  %187 = load i8*, i8** %6, align 8
  %188 = call i32* @r_str_new(i8* %187)
  %189 = load i32, i32* %10, align 4
  %190 = load i32, i32* %11, align 4
  %191 = load i32, i32* %14, align 4
  %192 = load i32, i32* %10, align 4
  %193 = add nsw i32 %191, %192
  %194 = sub nsw i32 %193, 3
  %195 = load i32, i32* %15, align 4
  %196 = sub nsw i32 %195, 2
  %197 = load i32, i32* %11, align 4
  %198 = add nsw i32 %196, %197
  %199 = call i8* @r_str_ansi_crop(i32* %188, i32 %189, i32 %190, i32 %194, i32 %198)
  store i8* %199, i8** %16, align 8
  br label %200

200:                                              ; preds = %186, %185
  %201 = load i8*, i8** %16, align 8
  %202 = icmp ne i8* %201, null
  br i1 %202, label %203, label %209

203:                                              ; preds = %200
  %204 = load i32*, i32** %8, align 8
  %205 = load i8*, i8** %16, align 8
  %206 = call i32 @r_cons_canvas_write(i32* %204, i8* %205)
  %207 = load i8*, i8** %16, align 8
  %208 = call i32 @free(i8* %207)
  br label %209

209:                                              ; preds = %203, %200
  ret void
}

declare dso_local %struct.TYPE_20__* @r_anal_get_fcn_in(i32, i32, i32) #1

declare dso_local i32 @R_MAX(i32, i32) #1

declare dso_local i32 @sdb_ptr_set(i32*, i32*, i32*, i32) #1

declare dso_local i32* @r_num_as_string(i32*, i32, i32) #1

declare dso_local i32* @r_str_new(i8*) #1

declare dso_local i32* @sdb_new0(...) #1

declare dso_local i8* @r_config_get(i32, i8*) #1

declare dso_local i32 @sdb_exists(i32*, i8*) #1

declare dso_local i32 @__reset_scroll_pos(%struct.TYPE_18__*) #1

declare dso_local i32 @r_cons_canvas_gotoxy(i32*, i32, i32) #1

declare dso_local i64 @r_str_pad(i8 signext, i32) #1

declare dso_local i32 @R_MIN(i32, i64) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i8* @r_str_ansi_crop(i32*, i32, i32, i32, i32) #1

declare dso_local i8* @r_str_prefix_all(i8*, i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @r_cons_canvas_write(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
