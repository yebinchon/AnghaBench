; ModuleID = '/home/carl/AnghaBench/radare2/libr/core/extr_cfile.c_r_core_file_do_load_for_debug.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/core/extr_cfile.c_r_core_file_do_load_for_debug.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_28__ = type { %struct.TYPE_26__*, i32, i32, i32 }
%struct.TYPE_26__ = type { i8*, i8* }
%struct.TYPE_27__ = type { i32 }
%struct.TYPE_33__ = type { i32 }
%struct.TYPE_29__ = type { i8* }
%struct.TYPE_30__ = type { i32 }
%struct.TYPE_31__ = type { %struct.TYPE_32__* }
%struct.TYPE_32__ = type { i32, i32 }

@.str = private unnamed_addr constant [7 x i8] c"dbg://\00", align 1
@UT64_MAX = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"RBinLoad: Cannot open %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"bin.rawstr\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"dbg.libs\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c".dmm*\00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"sym.imp.dlopen\00", align 1
@.str.6 = private unnamed_addr constant [16 x i8] c"sym.imp.dlmopen\00", align 1
@.str.7 = private unnamed_addr constant [11 x i8] c"dbg.unlibs\00", align 1
@.str.8 = private unnamed_addr constant [16 x i8] c"sym.imp.dlclose\00", align 1
@.str.9 = private unnamed_addr constant [4 x i8] c"any\00", align 1
@.str.10 = private unnamed_addr constant [11 x i8] c"bin.minstr\00", align 1
@.str.11 = private unnamed_addr constant [14 x i8] c"bin.maxstrbuf\00", align 1
@.str.12 = private unnamed_addr constant [4 x i8] c"dex\00", align 1
@.str.13 = private unnamed_addr constant [71 x i8] c"\22(fix-dex,wx `ph sha1 $s-32 @32` @12 ; wx `ph adler32 $s-12 @12` @8)\22\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_28__*, i32, i8*)* @r_core_file_do_load_for_debug to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @r_core_file_do_load_for_debug(%struct.TYPE_28__* %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_28__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %struct.TYPE_27__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_33__*, align 8
  %11 = alloca %struct.TYPE_29__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_30__, align 4
  %15 = alloca %struct.TYPE_31__*, align 8
  %16 = alloca %struct.TYPE_32__*, align 8
  store %struct.TYPE_28__* %0, %struct.TYPE_28__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  %17 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %18 = call %struct.TYPE_27__* @r_core_file_cur(%struct.TYPE_28__* %17)
  store %struct.TYPE_27__* %18, %struct.TYPE_27__** %8, align 8
  %19 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %20 = icmp ne %struct.TYPE_27__* %19, null
  br i1 %20, label %21, label %29

21:                                               ; preds = %3
  %22 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %26 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32* @r_io_desc_get(i32 %24, i32 %27)
  br label %30

29:                                               ; preds = %3
  br label %30

30:                                               ; preds = %29, %21
  %31 = phi i32* [ %28, %21 ], [ null, %29 ]
  store i32* %31, i32** %9, align 8
  store %struct.TYPE_33__* null, %struct.TYPE_33__** %10, align 8
  store i32 0, i32* %12, align 4
  %32 = load i8*, i8** %7, align 8
  %33 = call i32 @strncmp(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* %32, i32 6)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %38, label %35

35:                                               ; preds = %30
  %36 = load i8*, i8** %7, align 8
  %37 = getelementptr inbounds i8, i8* %36, i64 6
  store i8* %37, i8** %7, align 8
  br label %38

38:                                               ; preds = %35, %30
  %39 = load i32*, i32** %9, align 8
  %40 = icmp ne i32* %39, null
  br i1 %40, label %42, label %41

41:                                               ; preds = %38
  store i32 0, i32* %4, align 4
  br label %216

42:                                               ; preds = %38
  %43 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %44 = icmp ne %struct.TYPE_27__* %43, null
  br i1 %44, label %45, label %64

45:                                               ; preds = %42
  %46 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %47 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %46, i32 0, i32 3
  %48 = load i32, i32* %47, align 8
  %49 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %50 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %53 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @r_io_fd_get_pid(i32 %51, i32 %54)
  %56 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %57 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %60 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @r_io_fd_get_tid(i32 %58, i32 %61)
  %63 = call i32 @r_debug_select(i32 %48, i32 %55, i32 %62)
  br label %64

64:                                               ; preds = %45, %42
  %65 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %66 = icmp ne %struct.TYPE_27__* %65, null
  br i1 %66, label %67, label %71

67:                                               ; preds = %64
  %68 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %69 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  br label %72

71:                                               ; preds = %64
  br label %72

72:                                               ; preds = %71, %67
  %73 = phi i32 [ %70, %67 ], [ -1, %71 ]
  store i32 %73, i32* %13, align 4
  %74 = load i32, i32* %13, align 4
  %75 = load i32, i32* %6, align 4
  %76 = load i32, i32* @UT64_MAX, align 4
  %77 = call i32 @r_bin_options_init(%struct.TYPE_30__* %14, i32 %74, i32 %75, i32 %76, i32 0)
  %78 = load i32, i32* %12, align 4
  %79 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %14, i32 0, i32 0
  store i32 %78, i32* %79, align 4
  %80 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %81 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %80, i32 0, i32 0
  %82 = load %struct.TYPE_26__*, %struct.TYPE_26__** %81, align 8
  %83 = load i8*, i8** %7, align 8
  %84 = call i32 @r_bin_open(%struct.TYPE_26__* %82, i8* %83, %struct.TYPE_30__* %14)
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %110, label %86

86:                                               ; preds = %72
  %87 = load i8*, i8** %7, align 8
  %88 = call i32 @eprintf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i8* %87)
  %89 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %90 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 8
  %92 = call i8* @r_config_get_i(i32 %91, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0))
  %93 = icmp ne i8* %92, null
  br i1 %93, label %94, label %109

94:                                               ; preds = %86
  %95 = load i32, i32* %13, align 4
  %96 = load i32, i32* %6, align 4
  %97 = load i32, i32* @UT64_MAX, align 4
  %98 = call i32 @r_bin_options_init(%struct.TYPE_30__* %14, i32 %95, i32 %96, i32 %97, i32 1)
  %99 = load i32, i32* %12, align 4
  %100 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %14, i32 0, i32 0
  store i32 %99, i32* %100, align 4
  %101 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %102 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %101, i32 0, i32 0
  %103 = load %struct.TYPE_26__*, %struct.TYPE_26__** %102, align 8
  %104 = load i8*, i8** %7, align 8
  %105 = call i32 @r_bin_open(%struct.TYPE_26__* %103, i8* %104, %struct.TYPE_30__* %14)
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %108, label %107

107:                                              ; preds = %94
  store i32 0, i32* %4, align 4
  br label %216

108:                                              ; preds = %94
  br label %109

109:                                              ; preds = %108, %86
  br label %110

110:                                              ; preds = %109, %72
  %111 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %112 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 8
  %114 = call i64* @r_config_get(i32 %113, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0))
  %115 = load i64, i64* %114, align 8
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %126

117:                                              ; preds = %110
  %118 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %119 = call i32 @r_core_cmd0(%struct.TYPE_28__* %118, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0))
  %120 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %121 = call i32 @setbpint(%struct.TYPE_28__* %120, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0))
  %122 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %123 = call i32 @setbpint(%struct.TYPE_28__* %122, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i64 0, i64 0))
  %124 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %125 = call i32 @setbpint(%struct.TYPE_28__* %124, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.8, i64 0, i64 0))
  br label %126

126:                                              ; preds = %117, %110
  %127 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %128 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %127, i32 0, i32 0
  %129 = load %struct.TYPE_26__*, %struct.TYPE_26__** %128, align 8
  %130 = call %struct.TYPE_33__* @r_bin_cur(%struct.TYPE_26__* %129)
  store %struct.TYPE_33__* %130, %struct.TYPE_33__** %10, align 8
  %131 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %132 = load %struct.TYPE_33__*, %struct.TYPE_33__** %10, align 8
  %133 = call i32 @r_core_bin_set_env(%struct.TYPE_28__* %131, %struct.TYPE_33__* %132)
  %134 = load %struct.TYPE_33__*, %struct.TYPE_33__** %10, align 8
  %135 = call %struct.TYPE_29__* @r_bin_file_cur_plugin(%struct.TYPE_33__* %134)
  store %struct.TYPE_29__* %135, %struct.TYPE_29__** %11, align 8
  %136 = load %struct.TYPE_29__*, %struct.TYPE_29__** %11, align 8
  %137 = icmp ne %struct.TYPE_29__* %136, null
  br i1 %137, label %138, label %161

138:                                              ; preds = %126
  %139 = load %struct.TYPE_29__*, %struct.TYPE_29__** %11, align 8
  %140 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %139, i32 0, i32 0
  %141 = load i8*, i8** %140, align 8
  %142 = call i32 @strncmp(i8* %141, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i64 0, i64 0), i32 5)
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %161, label %144

144:                                              ; preds = %138
  %145 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %146 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %145, i32 0, i32 1
  %147 = load i32, i32* %146, align 8
  %148 = call i8* @r_config_get_i(i32 %147, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.10, i64 0, i64 0))
  %149 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %150 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %149, i32 0, i32 0
  %151 = load %struct.TYPE_26__*, %struct.TYPE_26__** %150, align 8
  %152 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %151, i32 0, i32 1
  store i8* %148, i8** %152, align 8
  %153 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %154 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %153, i32 0, i32 1
  %155 = load i32, i32* %154, align 8
  %156 = call i8* @r_config_get_i(i32 %155, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.11, i64 0, i64 0))
  %157 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %158 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %157, i32 0, i32 0
  %159 = load %struct.TYPE_26__*, %struct.TYPE_26__** %158, align 8
  %160 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %159, i32 0, i32 0
  store i8* %156, i8** %160, align 8
  br label %203

161:                                              ; preds = %138, %126
  %162 = load %struct.TYPE_33__*, %struct.TYPE_33__** %10, align 8
  %163 = icmp ne %struct.TYPE_33__* %162, null
  br i1 %163, label %164, label %202

164:                                              ; preds = %161
  %165 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %166 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %165, i32 0, i32 0
  %167 = load %struct.TYPE_26__*, %struct.TYPE_26__** %166, align 8
  %168 = call %struct.TYPE_31__* @r_bin_cur_object(%struct.TYPE_26__* %167)
  store %struct.TYPE_31__* %168, %struct.TYPE_31__** %15, align 8
  %169 = load %struct.TYPE_31__*, %struct.TYPE_31__** %15, align 8
  %170 = icmp ne %struct.TYPE_31__* %169, null
  br i1 %170, label %171, label %175

171:                                              ; preds = %164
  %172 = load %struct.TYPE_31__*, %struct.TYPE_31__** %15, align 8
  %173 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %172, i32 0, i32 0
  %174 = load %struct.TYPE_32__*, %struct.TYPE_32__** %173, align 8
  br label %176

175:                                              ; preds = %164
  br label %176

176:                                              ; preds = %175, %171
  %177 = phi %struct.TYPE_32__* [ %174, %171 ], [ null, %175 ]
  store %struct.TYPE_32__* %177, %struct.TYPE_32__** %16, align 8
  %178 = load %struct.TYPE_29__*, %struct.TYPE_29__** %11, align 8
  %179 = icmp ne %struct.TYPE_29__* %178, null
  br i1 %179, label %180, label %201

180:                                              ; preds = %176
  %181 = load %struct.TYPE_29__*, %struct.TYPE_29__** %11, align 8
  %182 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %181, i32 0, i32 0
  %183 = load i8*, i8** %182, align 8
  %184 = call i64 @strcmp(i8* %183, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i64 0, i64 0))
  %185 = icmp ne i64 %184, 0
  br i1 %185, label %186, label %201

186:                                              ; preds = %180
  %187 = load %struct.TYPE_32__*, %struct.TYPE_32__** %16, align 8
  %188 = icmp ne %struct.TYPE_32__* %187, null
  br i1 %188, label %189, label %201

189:                                              ; preds = %186
  %190 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %191 = load %struct.TYPE_33__*, %struct.TYPE_33__** %10, align 8
  %192 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %191, i32 0, i32 0
  %193 = load i32, i32* %192, align 4
  %194 = load %struct.TYPE_32__*, %struct.TYPE_32__** %16, align 8
  %195 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %194, i32 0, i32 1
  %196 = load i32, i32* %195, align 4
  %197 = load %struct.TYPE_32__*, %struct.TYPE_32__** %16, align 8
  %198 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %197, i32 0, i32 0
  %199 = load i32, i32* %198, align 4
  %200 = call i32 @r_core_bin_set_arch_bits(%struct.TYPE_28__* %190, i32 %193, i32 %196, i32 %199)
  br label %201

201:                                              ; preds = %189, %186, %180, %176
  br label %202

202:                                              ; preds = %201, %161
  br label %203

203:                                              ; preds = %202, %144
  %204 = load %struct.TYPE_29__*, %struct.TYPE_29__** %11, align 8
  %205 = icmp ne %struct.TYPE_29__* %204, null
  br i1 %205, label %206, label %215

206:                                              ; preds = %203
  %207 = load %struct.TYPE_29__*, %struct.TYPE_29__** %11, align 8
  %208 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %207, i32 0, i32 0
  %209 = load i8*, i8** %208, align 8
  %210 = call i64 @strcmp(i8* %209, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0))
  %211 = icmp ne i64 %210, 0
  br i1 %211, label %215, label %212

212:                                              ; preds = %206
  %213 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %214 = call i32 @r_core_cmd0(%struct.TYPE_28__* %213, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.13, i64 0, i64 0))
  br label %215

215:                                              ; preds = %212, %206, %203
  store i32 1, i32* %4, align 4
  br label %216

216:                                              ; preds = %215, %107, %41
  %217 = load i32, i32* %4, align 4
  ret i32 %217
}

declare dso_local %struct.TYPE_27__* @r_core_file_cur(%struct.TYPE_28__*) #1

declare dso_local i32* @r_io_desc_get(i32, i32) #1

declare dso_local i32 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @r_debug_select(i32, i32, i32) #1

declare dso_local i32 @r_io_fd_get_pid(i32, i32) #1

declare dso_local i32 @r_io_fd_get_tid(i32, i32) #1

declare dso_local i32 @r_bin_options_init(%struct.TYPE_30__*, i32, i32, i32, i32) #1

declare dso_local i32 @r_bin_open(%struct.TYPE_26__*, i8*, %struct.TYPE_30__*) #1

declare dso_local i32 @eprintf(i8*, i8*) #1

declare dso_local i8* @r_config_get_i(i32, i8*) #1

declare dso_local i64* @r_config_get(i32, i8*) #1

declare dso_local i32 @r_core_cmd0(%struct.TYPE_28__*, i8*) #1

declare dso_local i32 @setbpint(%struct.TYPE_28__*, i8*, i8*) #1

declare dso_local %struct.TYPE_33__* @r_bin_cur(%struct.TYPE_26__*) #1

declare dso_local i32 @r_core_bin_set_env(%struct.TYPE_28__*, %struct.TYPE_33__*) #1

declare dso_local %struct.TYPE_29__* @r_bin_file_cur_plugin(%struct.TYPE_33__*) #1

declare dso_local %struct.TYPE_31__* @r_bin_cur_object(%struct.TYPE_26__*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @r_core_bin_set_arch_bits(%struct.TYPE_28__*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
