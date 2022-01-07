; ModuleID = '/home/carl/AnghaBench/radare2/libr/core/extr_panels.c___create_almighty.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/core/extr_panels.c___create_almighty.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_22__ = type { %struct.TYPE_24__* }
%struct.TYPE_24__ = type { %struct.TYPE_21__* }
%struct.TYPE_21__ = type { i32, i32 }
%struct.TYPE_23__ = type { i32, i32 }

@INT8_MAX = common dso_local global i32 0, align 4
@NONE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"New command: \00", align 1
@VERTICAL = common dso_local global i32 0, align 4
@HORIZONTAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @__create_almighty(%struct.TYPE_22__* %0, i32* %1, i32* %2) #0 {
  %4 = alloca %struct.TYPE_22__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_23__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  store %struct.TYPE_22__* %0, %struct.TYPE_22__** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  %19 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %20 = call i32 @__set_cursor(%struct.TYPE_22__* %19, i32 0)
  store i32 40, i32* %7, align 4
  store i32 20, i32* %8, align 4
  %21 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %21, i32 0, i32 0
  %23 = load %struct.TYPE_24__*, %struct.TYPE_24__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %23, i32 0, i32 0
  %25 = load %struct.TYPE_21__*, %struct.TYPE_21__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = sub nsw i32 %27, 40
  %29 = sdiv i32 %28, 2
  store i32 %29, i32* %9, align 4
  %30 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %30, i32 0, i32 0
  %32 = load %struct.TYPE_24__*, %struct.TYPE_24__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %32, i32 0, i32 0
  %34 = load %struct.TYPE_21__*, %struct.TYPE_21__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = sub nsw i32 %36, 20
  %38 = sdiv i32 %37, 2
  store i32 %38, i32* %10, align 4
  %39 = call %struct.TYPE_23__* (...) @__init_modal()
  store %struct.TYPE_23__* %39, %struct.TYPE_23__** %11, align 8
  %40 = load %struct.TYPE_23__*, %struct.TYPE_23__** %11, align 8
  %41 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %40, i32 0, i32 1
  %42 = load i32, i32* %9, align 4
  %43 = load i32, i32* %10, align 4
  %44 = call i32 @__set_geometry(i32* %41, i32 %42, i32 %43, i32 40, i32 20)
  store i8* null, i8** %16, align 8
  %45 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %46 = load i32*, i32** %6, align 8
  %47 = load %struct.TYPE_23__*, %struct.TYPE_23__** %11, align 8
  %48 = call i32 @__update_modal(%struct.TYPE_22__* %45, i32* %46, %struct.TYPE_23__* %47)
  br label %49

49:                                               ; preds = %187, %3
  %50 = load %struct.TYPE_23__*, %struct.TYPE_23__** %11, align 8
  %51 = icmp ne %struct.TYPE_23__* %50, null
  br i1 %51, label %52, label %188

52:                                               ; preds = %49
  %53 = call i32 (...) @r_cons_readchar()
  store i32 %53, i32* %12, align 4
  %54 = load i32, i32* %12, align 4
  %55 = call i32 @r_cons_arrow_to_hjkl(i32 %54)
  store i32 %55, i32* %13, align 4
  store i8* null, i8** %16, align 8
  %56 = load i32, i32* %13, align 4
  %57 = load i32, i32* @INT8_MAX, align 4
  %58 = sub nsw i32 %57, 1
  %59 = icmp eq i32 %56, %58
  br i1 %59, label %60, label %115

60:                                               ; preds = %52
  %61 = call i64 @r_cons_get_click(i32* %14, i32* %15)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %114

63:                                               ; preds = %60
  %64 = load i32, i32* %14, align 4
  %65 = load i32, i32* %9, align 4
  %66 = icmp slt i32 %64, %65
  br i1 %66, label %81, label %67

67:                                               ; preds = %63
  %68 = load i32, i32* %9, align 4
  %69 = add nsw i32 %68, 40
  %70 = load i32, i32* %14, align 4
  %71 = icmp slt i32 %69, %70
  br i1 %71, label %81, label %72

72:                                               ; preds = %67
  %73 = load i32, i32* %15, align 4
  %74 = load i32, i32* %10, align 4
  %75 = icmp slt i32 %73, %74
  br i1 %75, label %81, label %76

76:                                               ; preds = %72
  %77 = load i32, i32* %10, align 4
  %78 = add nsw i32 %77, 20
  %79 = load i32, i32* %15, align 4
  %80 = icmp slt i32 %78, %79
  br i1 %80, label %81, label %82

81:                                               ; preds = %76, %72, %67, %63
  store i32 113, i32* %13, align 4
  br label %113

82:                                               ; preds = %76
  %83 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %84 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %85 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %84, i32 0, i32 0
  %86 = load %struct.TYPE_24__*, %struct.TYPE_24__** %85, align 8
  %87 = load i32, i32* %14, align 4
  %88 = load i32, i32* %15, align 4
  %89 = call i8* @get_word_from_canvas_for_menu(%struct.TYPE_22__* %83, %struct.TYPE_24__* %86, i32 %87, i32 %88)
  store i8* %89, i8** %16, align 8
  %90 = load i8*, i8** %16, align 8
  %91 = icmp ne i8* %90, null
  br i1 %91, label %92, label %112

92:                                               ; preds = %82
  %93 = load i32*, i32** %6, align 8
  %94 = load i8*, i8** %16, align 8
  %95 = call i8* @sdb_ptr_get(i32* %93, i8* %94, i32 0)
  store i8* %95, i8** %17, align 8
  %96 = load i8*, i8** %17, align 8
  %97 = icmp ne i8* %96, null
  br i1 %97, label %98, label %109

98:                                               ; preds = %92
  %99 = load i8*, i8** %17, align 8
  %100 = bitcast i8* %99 to i32 (%struct.TYPE_22__*, i32*, i32, i8*)*
  %101 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %102 = load i32*, i32** %5, align 8
  %103 = load i32, i32* @NONE, align 4
  %104 = load i8*, i8** %16, align 8
  %105 = call i32 %100(%struct.TYPE_22__* %101, i32* %102, i32 %103, i8* %104)
  %106 = call i32 @__free_modal(%struct.TYPE_23__** %11)
  %107 = load i8*, i8** %16, align 8
  %108 = call i32 @free(i8* %107)
  br label %188

109:                                              ; preds = %92
  %110 = load i8*, i8** %16, align 8
  %111 = call i32 @free(i8* %110)
  br label %112

112:                                              ; preds = %109, %82
  br label %113

113:                                              ; preds = %112, %81
  br label %114

114:                                              ; preds = %113, %60
  br label %115

115:                                              ; preds = %114, %52
  %116 = load i32, i32* %13, align 4
  switch i32 %116, label %187 [
    i32 101, label %117
    i32 106, label %134
    i32 107, label %143
    i32 118, label %152
    i32 104, label %160
    i32 13, label %168
    i32 45, label %176
    i32 113, label %185
    i32 34, label %185
  ]

117:                                              ; preds = %115
  %118 = call i32 @__free_modal(%struct.TYPE_23__** %11)
  %119 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %120 = call i32 @__set_refresh_all(%struct.TYPE_22__* %119, i32 0, i32 0)
  %121 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %122 = call i8* @__show_status_input(%struct.TYPE_22__* %121, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  store i8* %122, i8** %18, align 8
  %123 = load i8*, i8** %18, align 8
  %124 = call i32 @R_STR_ISNOTEMPTY(i8* %123)
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %131

126:                                              ; preds = %117
  %127 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %128 = load i8*, i8** %18, align 8
  %129 = load i8*, i8** %18, align 8
  %130 = call i32 @__replace_cmd(%struct.TYPE_22__* %127, i8* %128, i8* %129)
  br label %131

131:                                              ; preds = %126, %117
  %132 = load i8*, i8** %18, align 8
  %133 = call i32 @free(i8* %132)
  br label %187

134:                                              ; preds = %115
  %135 = load %struct.TYPE_23__*, %struct.TYPE_23__** %11, align 8
  %136 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 4
  %138 = add nsw i32 %137, 1
  store i32 %138, i32* %136, align 4
  %139 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %140 = load i32*, i32** %6, align 8
  %141 = load %struct.TYPE_23__*, %struct.TYPE_23__** %11, align 8
  %142 = call i32 @__update_modal(%struct.TYPE_22__* %139, i32* %140, %struct.TYPE_23__* %141)
  br label %187

143:                                              ; preds = %115
  %144 = load %struct.TYPE_23__*, %struct.TYPE_23__** %11, align 8
  %145 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 4
  %147 = add nsw i32 %146, -1
  store i32 %147, i32* %145, align 4
  %148 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %149 = load i32*, i32** %6, align 8
  %150 = load %struct.TYPE_23__*, %struct.TYPE_23__** %11, align 8
  %151 = call i32 @__update_modal(%struct.TYPE_22__* %148, i32* %149, %struct.TYPE_23__* %150)
  br label %187

152:                                              ; preds = %115
  %153 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %154 = load i32*, i32** %5, align 8
  %155 = load %struct.TYPE_23__*, %struct.TYPE_23__** %11, align 8
  %156 = load i32*, i32** %6, align 8
  %157 = load i32, i32* @VERTICAL, align 4
  %158 = call i32 @__exec_almighty(%struct.TYPE_22__* %153, i32* %154, %struct.TYPE_23__* %155, i32* %156, i32 %157)
  %159 = call i32 @__free_modal(%struct.TYPE_23__** %11)
  br label %187

160:                                              ; preds = %115
  %161 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %162 = load i32*, i32** %5, align 8
  %163 = load %struct.TYPE_23__*, %struct.TYPE_23__** %11, align 8
  %164 = load i32*, i32** %6, align 8
  %165 = load i32, i32* @HORIZONTAL, align 4
  %166 = call i32 @__exec_almighty(%struct.TYPE_22__* %161, i32* %162, %struct.TYPE_23__* %163, i32* %164, i32 %165)
  %167 = call i32 @__free_modal(%struct.TYPE_23__** %11)
  br label %187

168:                                              ; preds = %115
  %169 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %170 = load i32*, i32** %5, align 8
  %171 = load %struct.TYPE_23__*, %struct.TYPE_23__** %11, align 8
  %172 = load i32*, i32** %6, align 8
  %173 = load i32, i32* @NONE, align 4
  %174 = call i32 @__exec_almighty(%struct.TYPE_22__* %169, i32* %170, %struct.TYPE_23__* %171, i32* %172, i32 %173)
  %175 = call i32 @__free_modal(%struct.TYPE_23__** %11)
  br label %187

176:                                              ; preds = %115
  %177 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %178 = load %struct.TYPE_23__*, %struct.TYPE_23__** %11, align 8
  %179 = load i32*, i32** %6, align 8
  %180 = call i32 @__delete_almighty(%struct.TYPE_22__* %177, %struct.TYPE_23__* %178, i32* %179)
  %181 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %182 = load i32*, i32** %6, align 8
  %183 = load %struct.TYPE_23__*, %struct.TYPE_23__** %11, align 8
  %184 = call i32 @__update_modal(%struct.TYPE_22__* %181, i32* %182, %struct.TYPE_23__* %183)
  br label %187

185:                                              ; preds = %115, %115
  %186 = call i32 @__free_modal(%struct.TYPE_23__** %11)
  br label %187

187:                                              ; preds = %115, %185, %176, %168, %160, %152, %143, %134, %131
  br label %49

188:                                              ; preds = %98, %49
  %189 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %190 = call i32 @__set_refresh_all(%struct.TYPE_22__* %189, i32 0, i32 0)
  ret void
}

declare dso_local i32 @__set_cursor(%struct.TYPE_22__*, i32) #1

declare dso_local %struct.TYPE_23__* @__init_modal(...) #1

declare dso_local i32 @__set_geometry(i32*, i32, i32, i32, i32) #1

declare dso_local i32 @__update_modal(%struct.TYPE_22__*, i32*, %struct.TYPE_23__*) #1

declare dso_local i32 @r_cons_readchar(...) #1

declare dso_local i32 @r_cons_arrow_to_hjkl(i32) #1

declare dso_local i64 @r_cons_get_click(i32*, i32*) #1

declare dso_local i8* @get_word_from_canvas_for_menu(%struct.TYPE_22__*, %struct.TYPE_24__*, i32, i32) #1

declare dso_local i8* @sdb_ptr_get(i32*, i8*, i32) #1

declare dso_local i32 @__free_modal(%struct.TYPE_23__**) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @__set_refresh_all(%struct.TYPE_22__*, i32, i32) #1

declare dso_local i8* @__show_status_input(%struct.TYPE_22__*, i8*) #1

declare dso_local i32 @R_STR_ISNOTEMPTY(i8*) #1

declare dso_local i32 @__replace_cmd(%struct.TYPE_22__*, i8*, i8*) #1

declare dso_local i32 @__exec_almighty(%struct.TYPE_22__*, i32*, %struct.TYPE_23__*, i32*, i32) #1

declare dso_local i32 @__delete_almighty(%struct.TYPE_22__*, %struct.TYPE_23__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
