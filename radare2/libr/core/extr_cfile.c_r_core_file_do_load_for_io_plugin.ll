; ModuleID = '/home/carl/AnghaBench/radare2/libr/core/extr_cfile.c_r_core_file_do_load_for_io_plugin.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/core/extr_cfile.c_r_core_file_do_load_for_io_plugin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_26__ = type { %struct.TYPE_24__*, i32, i32 }
%struct.TYPE_24__ = type { i8*, i8*, i32 }
%struct.TYPE_25__ = type { i32 }
%struct.TYPE_31__ = type { i32 }
%struct.TYPE_27__ = type { i32 }
%struct.TYPE_28__ = type { i32 }
%struct.TYPE_29__ = type { %struct.TYPE_30__* }
%struct.TYPE_30__ = type { i32, i32 }

@.str = private unnamed_addr constant [4 x i8] c"any\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"bin.minstr\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"bin.maxstrbuf\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"dex\00", align 1
@.str.4 = private unnamed_addr constant [71 x i8] c"\22(fix-dex,wx `ph sha1 $s-32 @32` @12 ; wx `ph adler32 $s-12 @12` @8)\22\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_26__*, i32, i32)* @r_core_file_do_load_for_io_plugin to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @r_core_file_do_load_for_io_plugin(%struct.TYPE_26__* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_26__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_25__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_31__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_27__*, align 8
  %13 = alloca %struct.TYPE_28__, align 4
  %14 = alloca %struct.TYPE_29__*, align 8
  %15 = alloca %struct.TYPE_30__*, align 8
  %16 = alloca %struct.TYPE_29__*, align 8
  %17 = alloca %struct.TYPE_30__*, align 8
  store %struct.TYPE_26__* %0, %struct.TYPE_26__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %18 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %19 = call %struct.TYPE_25__* @r_core_file_cur(%struct.TYPE_26__* %18)
  store %struct.TYPE_25__* %19, %struct.TYPE_25__** %8, align 8
  %20 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %21 = icmp ne %struct.TYPE_25__* %20, null
  br i1 %21, label %22, label %26

22:                                               ; preds = %3
  %23 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %24 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  br label %27

26:                                               ; preds = %3
  br label %27

27:                                               ; preds = %26, %22
  %28 = phi i32 [ %25, %22 ], [ -1, %26 ]
  store i32 %28, i32* %9, align 4
  store %struct.TYPE_31__* null, %struct.TYPE_31__** %10, align 8
  store i32 0, i32* %11, align 4
  %29 = load i32, i32* %9, align 4
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %27
  store i32 0, i32* %4, align 4
  br label %177

32:                                               ; preds = %27
  %33 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* %9, align 4
  %37 = call i32 @r_io_use_fd(i32 %35, i32 %36)
  %38 = load i32, i32* %9, align 4
  %39 = load i32, i32* %6, align 4
  %40 = load i32, i32* %7, align 4
  %41 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %42 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %41, i32 0, i32 0
  %43 = load %struct.TYPE_24__*, %struct.TYPE_24__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 8
  %46 = call i32 @r_bin_options_init(%struct.TYPE_28__* %13, i32 %38, i32 %39, i32 %40, i32 %45)
  %47 = load i32, i32* %11, align 4
  %48 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %13, i32 0, i32 0
  store i32 %47, i32* %48, align 4
  %49 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %50 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %49, i32 0, i32 0
  %51 = load %struct.TYPE_24__*, %struct.TYPE_24__** %50, align 8
  %52 = call i32 @r_bin_open_io(%struct.TYPE_24__* %51, %struct.TYPE_28__* %13)
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %55, label %54

54:                                               ; preds = %32
  store i32 0, i32* %4, align 4
  br label %177

55:                                               ; preds = %32
  %56 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %57 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %56, i32 0, i32 0
  %58 = load %struct.TYPE_24__*, %struct.TYPE_24__** %57, align 8
  %59 = call %struct.TYPE_31__* @r_bin_cur(%struct.TYPE_24__* %58)
  store %struct.TYPE_31__* %59, %struct.TYPE_31__** %10, align 8
  %60 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %61 = load %struct.TYPE_31__*, %struct.TYPE_31__** %10, align 8
  %62 = call i32 @r_core_bin_set_env(%struct.TYPE_26__* %60, %struct.TYPE_31__* %61)
  %63 = load %struct.TYPE_31__*, %struct.TYPE_31__** %10, align 8
  %64 = call %struct.TYPE_27__* @r_bin_file_cur_plugin(%struct.TYPE_31__* %63)
  store %struct.TYPE_27__* %64, %struct.TYPE_27__** %12, align 8
  %65 = load %struct.TYPE_27__*, %struct.TYPE_27__** %12, align 8
  %66 = icmp ne %struct.TYPE_27__* %65, null
  br i1 %66, label %67, label %118

67:                                               ; preds = %55
  %68 = load %struct.TYPE_27__*, %struct.TYPE_27__** %12, align 8
  %69 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = call i64 @strcmp(i32 %70, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %118, label %73

73:                                               ; preds = %67
  %74 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %75 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %74, i32 0, i32 0
  %76 = load %struct.TYPE_24__*, %struct.TYPE_24__** %75, align 8
  %77 = call %struct.TYPE_29__* @r_bin_cur_object(%struct.TYPE_24__* %76)
  store %struct.TYPE_29__* %77, %struct.TYPE_29__** %14, align 8
  %78 = load %struct.TYPE_29__*, %struct.TYPE_29__** %14, align 8
  %79 = icmp ne %struct.TYPE_29__* %78, null
  br i1 %79, label %80, label %84

80:                                               ; preds = %73
  %81 = load %struct.TYPE_29__*, %struct.TYPE_29__** %14, align 8
  %82 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %81, i32 0, i32 0
  %83 = load %struct.TYPE_30__*, %struct.TYPE_30__** %82, align 8
  br label %85

84:                                               ; preds = %73
  br label %85

85:                                               ; preds = %84, %80
  %86 = phi %struct.TYPE_30__* [ %83, %80 ], [ null, %84 ]
  store %struct.TYPE_30__* %86, %struct.TYPE_30__** %15, align 8
  %87 = load %struct.TYPE_30__*, %struct.TYPE_30__** %15, align 8
  %88 = icmp ne %struct.TYPE_30__* %87, null
  br i1 %88, label %90, label %89

89:                                               ; preds = %85
  store i32 0, i32* %4, align 4
  br label %177

90:                                               ; preds = %85
  %91 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %92 = load %struct.TYPE_31__*, %struct.TYPE_31__** %10, align 8
  %93 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = load %struct.TYPE_30__*, %struct.TYPE_30__** %15, align 8
  %96 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = load %struct.TYPE_30__*, %struct.TYPE_30__** %15, align 8
  %99 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = call i32 @r_core_bin_set_arch_bits(%struct.TYPE_26__* %91, i32 %94, i32 %97, i32 %100)
  %102 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %103 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 8
  %105 = call i8* @r_config_get_i(i32 %104, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  %106 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %107 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %106, i32 0, i32 0
  %108 = load %struct.TYPE_24__*, %struct.TYPE_24__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %108, i32 0, i32 1
  store i8* %105, i8** %109, align 8
  %110 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %111 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 8
  %113 = call i8* @r_config_get_i(i32 %112, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0))
  %114 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %115 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %114, i32 0, i32 0
  %116 = load %struct.TYPE_24__*, %struct.TYPE_24__** %115, align 8
  %117 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %116, i32 0, i32 0
  store i8* %113, i8** %117, align 8
  br label %164

118:                                              ; preds = %67, %55
  %119 = load %struct.TYPE_31__*, %struct.TYPE_31__** %10, align 8
  %120 = icmp ne %struct.TYPE_31__* %119, null
  br i1 %120, label %121, label %163

121:                                              ; preds = %118
  %122 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %123 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %122, i32 0, i32 0
  %124 = load %struct.TYPE_24__*, %struct.TYPE_24__** %123, align 8
  %125 = call %struct.TYPE_29__* @r_bin_cur_object(%struct.TYPE_24__* %124)
  store %struct.TYPE_29__* %125, %struct.TYPE_29__** %16, align 8
  %126 = load %struct.TYPE_29__*, %struct.TYPE_29__** %16, align 8
  %127 = icmp ne %struct.TYPE_29__* %126, null
  br i1 %127, label %128, label %132

128:                                              ; preds = %121
  %129 = load %struct.TYPE_29__*, %struct.TYPE_29__** %16, align 8
  %130 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %129, i32 0, i32 0
  %131 = load %struct.TYPE_30__*, %struct.TYPE_30__** %130, align 8
  br label %133

132:                                              ; preds = %121
  br label %133

133:                                              ; preds = %132, %128
  %134 = phi %struct.TYPE_30__* [ %131, %128 ], [ null, %132 ]
  store %struct.TYPE_30__* %134, %struct.TYPE_30__** %17, align 8
  %135 = load %struct.TYPE_30__*, %struct.TYPE_30__** %17, align 8
  %136 = icmp ne %struct.TYPE_30__* %135, null
  br i1 %136, label %138, label %137

137:                                              ; preds = %133
  store i32 0, i32* %4, align 4
  br label %177

138:                                              ; preds = %133
  %139 = load %struct.TYPE_27__*, %struct.TYPE_27__** %12, align 8
  %140 = icmp ne %struct.TYPE_27__* %139, null
  br i1 %140, label %141, label %162

141:                                              ; preds = %138
  %142 = load %struct.TYPE_27__*, %struct.TYPE_27__** %12, align 8
  %143 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 4
  %145 = call i64 @strcmp(i32 %144, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %146 = icmp ne i64 %145, 0
  br i1 %146, label %147, label %162

147:                                              ; preds = %141
  %148 = load %struct.TYPE_30__*, %struct.TYPE_30__** %17, align 8
  %149 = icmp ne %struct.TYPE_30__* %148, null
  br i1 %149, label %150, label %162

150:                                              ; preds = %147
  %151 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %152 = load %struct.TYPE_31__*, %struct.TYPE_31__** %10, align 8
  %153 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 4
  %155 = load %struct.TYPE_30__*, %struct.TYPE_30__** %17, align 8
  %156 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %155, i32 0, i32 1
  %157 = load i32, i32* %156, align 4
  %158 = load %struct.TYPE_30__*, %struct.TYPE_30__** %17, align 8
  %159 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 4
  %161 = call i32 @r_core_bin_set_arch_bits(%struct.TYPE_26__* %151, i32 %154, i32 %157, i32 %160)
  br label %162

162:                                              ; preds = %150, %147, %141, %138
  br label %163

163:                                              ; preds = %162, %118
  br label %164

164:                                              ; preds = %163, %90
  %165 = load %struct.TYPE_27__*, %struct.TYPE_27__** %12, align 8
  %166 = icmp ne %struct.TYPE_27__* %165, null
  br i1 %166, label %167, label %176

167:                                              ; preds = %164
  %168 = load %struct.TYPE_27__*, %struct.TYPE_27__** %12, align 8
  %169 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %168, i32 0, i32 0
  %170 = load i32, i32* %169, align 4
  %171 = call i64 @strcmp(i32 %170, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0))
  %172 = icmp ne i64 %171, 0
  br i1 %172, label %176, label %173

173:                                              ; preds = %167
  %174 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %175 = call i32 @r_core_cmd0(%struct.TYPE_26__* %174, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.4, i64 0, i64 0))
  br label %176

176:                                              ; preds = %173, %167, %164
  store i32 1, i32* %4, align 4
  br label %177

177:                                              ; preds = %176, %137, %89, %54, %31
  %178 = load i32, i32* %4, align 4
  ret i32 %178
}

declare dso_local %struct.TYPE_25__* @r_core_file_cur(%struct.TYPE_26__*) #1

declare dso_local i32 @r_io_use_fd(i32, i32) #1

declare dso_local i32 @r_bin_options_init(%struct.TYPE_28__*, i32, i32, i32, i32) #1

declare dso_local i32 @r_bin_open_io(%struct.TYPE_24__*, %struct.TYPE_28__*) #1

declare dso_local %struct.TYPE_31__* @r_bin_cur(%struct.TYPE_24__*) #1

declare dso_local i32 @r_core_bin_set_env(%struct.TYPE_26__*, %struct.TYPE_31__*) #1

declare dso_local %struct.TYPE_27__* @r_bin_file_cur_plugin(%struct.TYPE_31__*) #1

declare dso_local i64 @strcmp(i32, i8*) #1

declare dso_local %struct.TYPE_29__* @r_bin_cur_object(%struct.TYPE_24__*) #1

declare dso_local i32 @r_core_bin_set_arch_bits(%struct.TYPE_26__*, i32, i32, i32) #1

declare dso_local i8* @r_config_get_i(i32, i8*) #1

declare dso_local i32 @r_core_cmd0(%struct.TYPE_26__*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
