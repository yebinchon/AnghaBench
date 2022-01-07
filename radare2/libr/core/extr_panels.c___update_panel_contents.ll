; ModuleID = '/home/carl/AnghaBench/radare2/libr/core/extr_panels.c___update_panel_contents.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/core/extr_panels.c___update_panel_contents.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { %struct.TYPE_15__*, %struct.TYPE_12__* }
%struct.TYPE_15__ = type { i32* }
%struct.TYPE_12__ = type { i64 }
%struct.TYPE_16__ = type { %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i32, i32, i32, %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i32, i32, i32, i32 }

@PANEL_CMD_GRAPH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"*\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @__update_panel_contents(%struct.TYPE_17__* %0, %struct.TYPE_16__* %1, i8* %2) #0 {
  %4 = alloca %struct.TYPE_17__*, align 8
  %5 = alloca %struct.TYPE_16__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca %struct.TYPE_15__*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i8*, align 8
  %21 = alloca i32, align 4
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %4, align 8
  store %struct.TYPE_16__* %1, %struct.TYPE_16__** %5, align 8
  store i8* %2, i8** %6, align 8
  %22 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %23 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %24 = call i64 @__is_abnormal_cursor_type(%struct.TYPE_17__* %22, %struct.TYPE_16__* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %33

26:                                               ; preds = %3
  %27 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %27, i32 0, i32 1
  %29 = load %struct.TYPE_12__*, %struct.TYPE_12__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br label %33

33:                                               ; preds = %26, %3
  %34 = phi i1 [ false, %3 ], [ %32, %26 ]
  %35 = zext i1 %34 to i32
  store i32 %35, i32* %7, align 4
  %36 = load i32, i32* %7, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %33
  br label %45

39:                                               ; preds = %33
  %40 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %41 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %40, i32 0, i32 0
  %42 = load %struct.TYPE_14__*, %struct.TYPE_14__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  br label %45

45:                                               ; preds = %39, %38
  %46 = phi i32 [ -2, %38 ], [ %44, %39 ]
  store i32 %46, i32* %8, align 4
  %47 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %48 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %47, i32 0, i32 0
  %49 = load %struct.TYPE_14__*, %struct.TYPE_14__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @R_MAX(i32 %51, i32 0)
  store i32 %52, i32* %9, align 4
  %53 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %54 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %53, i32 0, i32 0
  %55 = load %struct.TYPE_14__*, %struct.TYPE_14__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %55, i32 0, i32 3
  %57 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  store i32 %58, i32* %10, align 4
  %59 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %60 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %59, i32 0, i32 0
  %61 = load %struct.TYPE_14__*, %struct.TYPE_14__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %61, i32 0, i32 3
  %63 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  store i32 %64, i32* %11, align 4
  %65 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %66 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %65, i32 0, i32 0
  %67 = load %struct.TYPE_14__*, %struct.TYPE_14__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %67, i32 0, i32 3
  %69 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 4
  store i32 %70, i32* %12, align 4
  %71 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %72 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %71, i32 0, i32 0
  %73 = load %struct.TYPE_14__*, %struct.TYPE_14__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %73, i32 0, i32 3
  %75 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %74, i32 0, i32 3
  %76 = load i32, i32* %75, align 4
  store i32 %76, i32* %13, align 4
  %77 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %78 = load i32, i32* @PANEL_CMD_GRAPH, align 4
  %79 = call i64 @__check_panel_type(%struct.TYPE_16__* %77, i32 %78)
  %80 = icmp ne i64 %79, 0
  %81 = zext i1 %80 to i64
  %82 = select i1 %80, i32 1, i32 0
  store i32 %82, i32* %14, align 4
  store i8* null, i8** %15, align 8
  %83 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %84 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %83, i32 0, i32 0
  %85 = load %struct.TYPE_15__*, %struct.TYPE_15__** %84, align 8
  store %struct.TYPE_15__* %85, %struct.TYPE_15__** %16, align 8
  %86 = load %struct.TYPE_15__*, %struct.TYPE_15__** %16, align 8
  %87 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %86, i32 0, i32 0
  %88 = load i32*, i32** %87, align 8
  store i32* %88, i32** %17, align 8
  %89 = load i32*, i32** %17, align 8
  %90 = load i32, i32* %10, align 4
  %91 = add nsw i32 %90, 2
  %92 = load i32, i32* %11, align 4
  %93 = add nsw i32 %92, 2
  %94 = call i32 @r_cons_canvas_gotoxy(i32* %89, i32 %91, i32 %93)
  %95 = load i32, i32* %8, align 4
  %96 = icmp slt i32 %95, 0
  br i1 %96, label %97, label %133

97:                                               ; preds = %45
  %98 = call i64 @r_str_pad(i8 signext 32, i32 128)
  %99 = inttoptr i64 %98 to i8*
  store i8* %99, i8** %18, align 8
  %100 = load i32, i32* %8, align 4
  %101 = sub nsw i32 0, %100
  %102 = load i8*, i8** %18, align 8
  %103 = call i64 @strlen(i8* %102)
  %104 = sub nsw i64 %103, 1
  %105 = call i32 @R_MIN(i32 %101, i64 %104)
  store i32 %105, i32* %19, align 4
  %106 = load i8*, i8** %18, align 8
  %107 = load i32, i32* %19, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds i8, i8* %106, i64 %108
  store i8 0, i8* %109, align 1
  %110 = load i8*, i8** %6, align 8
  %111 = load i32, i32* %9, align 4
  %112 = load i32, i32* %14, align 4
  %113 = add nsw i32 %111, %112
  %114 = load i32, i32* %12, align 4
  %115 = load i32, i32* %8, align 4
  %116 = add nsw i32 %114, %115
  %117 = sub nsw i32 %116, 3
  %118 = load i32, i32* %13, align 4
  %119 = sub nsw i32 %118, 2
  %120 = load i32, i32* %9, align 4
  %121 = add nsw i32 %119, %120
  %122 = call i8* @r_str_ansi_crop(i8* %110, i32 0, i32 %113, i32 %117, i32 %121)
  store i8* %122, i8** %15, align 8
  %123 = load i8*, i8** %15, align 8
  %124 = load i8*, i8** %18, align 8
  %125 = call i8* @r_str_prefix_all(i8* %123, i8* %124)
  store i8* %125, i8** %20, align 8
  %126 = load i8*, i8** %20, align 8
  %127 = icmp ne i8* %126, null
  br i1 %127, label %128, label %132

128:                                              ; preds = %97
  %129 = load i8*, i8** %15, align 8
  %130 = call i32 @free(i8* %129)
  %131 = load i8*, i8** %20, align 8
  store i8* %131, i8** %15, align 8
  br label %132

132:                                              ; preds = %128, %97
  br label %148

133:                                              ; preds = %45
  %134 = load i8*, i8** %6, align 8
  %135 = load i32, i32* %8, align 4
  %136 = load i32, i32* %9, align 4
  %137 = load i32, i32* %14, align 4
  %138 = add nsw i32 %136, %137
  %139 = load i32, i32* %12, align 4
  %140 = load i32, i32* %8, align 4
  %141 = add nsw i32 %139, %140
  %142 = sub nsw i32 %141, 3
  %143 = load i32, i32* %13, align 4
  %144 = sub nsw i32 %143, 2
  %145 = load i32, i32* %9, align 4
  %146 = add nsw i32 %144, %145
  %147 = call i8* @r_str_ansi_crop(i8* %134, i32 %135, i32 %138, i32 %142, i32 %146)
  store i8* %147, i8** %15, align 8
  br label %148

148:                                              ; preds = %133, %132
  %149 = load i8*, i8** %15, align 8
  %150 = icmp ne i8* %149, null
  br i1 %150, label %151, label %157

151:                                              ; preds = %148
  %152 = load i32*, i32** %17, align 8
  %153 = load i8*, i8** %15, align 8
  %154 = call i32 @r_cons_canvas_write(i32* %152, i8* %153)
  %155 = load i8*, i8** %15, align 8
  %156 = call i32 @free(i8* %155)
  br label %157

157:                                              ; preds = %151, %148
  %158 = load i32, i32* %7, align 4
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %160, label %192

160:                                              ; preds = %157
  %161 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %162 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %161, i32 0, i32 0
  %163 = load %struct.TYPE_14__*, %struct.TYPE_14__** %162, align 8
  %164 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %163, i32 0, i32 2
  %165 = load i32, i32* %164, align 4
  %166 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %167 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %166, i32 0, i32 0
  %168 = load %struct.TYPE_14__*, %struct.TYPE_14__** %167, align 8
  %169 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %168, i32 0, i32 1
  %170 = load i32, i32* %169, align 4
  %171 = sub nsw i32 %165, %170
  store i32 %171, i32* %21, align 4
  %172 = load i32*, i32** %17, align 8
  %173 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %174 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %173, i32 0, i32 0
  %175 = load %struct.TYPE_14__*, %struct.TYPE_14__** %174, align 8
  %176 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %175, i32 0, i32 3
  %177 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %176, i32 0, i32 0
  %178 = load i32, i32* %177, align 4
  %179 = add nsw i32 %178, 2
  %180 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %181 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %180, i32 0, i32 0
  %182 = load %struct.TYPE_14__*, %struct.TYPE_14__** %181, align 8
  %183 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %182, i32 0, i32 3
  %184 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %183, i32 0, i32 1
  %185 = load i32, i32* %184, align 4
  %186 = add nsw i32 %185, 2
  %187 = load i32, i32* %21, align 4
  %188 = add nsw i32 %186, %187
  %189 = call i32 @r_cons_canvas_gotoxy(i32* %172, i32 %179, i32 %188)
  %190 = load i32*, i32** %17, align 8
  %191 = call i32 @r_cons_canvas_write(i32* %190, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  br label %192

192:                                              ; preds = %160, %157
  ret void
}

declare dso_local i64 @__is_abnormal_cursor_type(%struct.TYPE_17__*, %struct.TYPE_16__*) #1

declare dso_local i32 @R_MAX(i32, i32) #1

declare dso_local i64 @__check_panel_type(%struct.TYPE_16__*, i32) #1

declare dso_local i32 @r_cons_canvas_gotoxy(i32*, i32, i32) #1

declare dso_local i64 @r_str_pad(i8 signext, i32) #1

declare dso_local i32 @R_MIN(i32, i64) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i8* @r_str_ansi_crop(i8*, i32, i32, i32, i32) #1

declare dso_local i8* @r_str_prefix_all(i8*, i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @r_cons_canvas_write(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
