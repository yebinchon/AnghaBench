; ModuleID = '/home/carl/AnghaBench/mpv/video/out/opengl/extr_context_glx.c_create_context_x11_gl3.c'
source_filename = "/home/carl/AnghaBench/mpv/video/out/opengl/extr_context_glx.c_create_context_x11_gl3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ra_ctx = type { %struct.TYPE_3__, %struct.vo*, %struct.priv* }
%struct.TYPE_3__ = type { i64 }
%struct.vo = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i32, i32 }
%struct.priv = type { i8*, i64, i32 }

@.str = private unnamed_addr constant [27 x i8] c"glXCreateContextAttribsARB\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"GLX_ARB_create_context\00", align 1
@GLX_CONTEXT_DEBUG_BIT_ARB = common dso_local global i32 0, align 4
@GLX_CONTEXT_CORE_PROFILE_BIT_ARB = common dso_local global i32 0, align 4
@GLX_CONTEXT_ES2_PROFILE_BIT_EXT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [35 x i8] c"GLX_EXT_create_context_es2_profile\00", align 1
@GLX_CONTEXT_MAJOR_VERSION_ARB = common dso_local global i32 0, align 4
@GLX_CONTEXT_MINOR_VERSION_ARB = common dso_local global i32 0, align 4
@GLX_CONTEXT_PROFILE_MASK_ARB = common dso_local global i32 0, align 4
@GLX_CONTEXT_FLAGS_ARB = common dso_local global i32 0, align 4
@None = common dso_local global i32 0, align 4
@True = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [28 x i8] c"Could not set GLX context!\0A\00", align 1
@.str.4 = private unnamed_addr constant [21 x i8] c"GLX_OML_sync_control\00", align 1
@.str.5 = private unnamed_addr constant [20 x i8] c"glXGetSyncValuesOML\00", align 1
@.str.6 = private unnamed_addr constant [29 x i8] c"Using GLX_OML_sync_control.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ra_ctx*, i32*, i32, i32)* @create_context_x11_gl3 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @create_context_x11_gl3(%struct.ra_ctx* %0, i32* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ra_ctx*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.priv*, align 8
  %11 = alloca %struct.vo*, align 8
  %12 = alloca i64 (i32, i32, i32, i32, i32*)*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca [9 x i32], align 16
  %18 = alloca i64, align 8
  store %struct.ra_ctx* %0, %struct.ra_ctx** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %19 = load %struct.ra_ctx*, %struct.ra_ctx** %6, align 8
  %20 = getelementptr inbounds %struct.ra_ctx, %struct.ra_ctx* %19, i32 0, i32 2
  %21 = load %struct.priv*, %struct.priv** %20, align 8
  store %struct.priv* %21, %struct.priv** %10, align 8
  %22 = load %struct.ra_ctx*, %struct.ra_ctx** %6, align 8
  %23 = getelementptr inbounds %struct.ra_ctx, %struct.ra_ctx* %22, i32 0, i32 1
  %24 = load %struct.vo*, %struct.vo** %23, align 8
  store %struct.vo* %24, %struct.vo** %11, align 8
  %25 = load %struct.priv*, %struct.priv** %10, align 8
  %26 = getelementptr inbounds %struct.priv, %struct.priv* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %4
  store i32 1, i32* %5, align 4
  br label %181

30:                                               ; preds = %4
  %31 = load %struct.ra_ctx*, %struct.ra_ctx** %6, align 8
  %32 = load i32, i32* %8, align 4
  %33 = load i32, i32* %9, align 4
  %34 = call i32 @ra_gl_ctx_test_version(%struct.ra_ctx* %31, i32 %32, i32 %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %37, label %36

36:                                               ; preds = %30
  store i32 0, i32* %5, align 4
  br label %181

37:                                               ; preds = %30
  %38 = call i64 @glXGetProcAddressARB(i32* bitcast ([27 x i8]* @.str to i32*))
  %39 = inttoptr i64 %38 to i64 (i32, i32, i32, i32, i32*)*
  store i64 (i32, i32, i32, i32, i32*)* %39, i64 (i32, i32, i32, i32, i32*)** %12, align 8
  %40 = load %struct.vo*, %struct.vo** %11, align 8
  %41 = getelementptr inbounds %struct.vo, %struct.vo* %40, i32 0, i32 1
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.vo*, %struct.vo** %11, align 8
  %46 = getelementptr inbounds %struct.vo, %struct.vo* %45, i32 0, i32 1
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 4
  %50 = call i8* @glXQueryExtensionsString(i32 %44, i32 %49)
  store i8* %50, i8** %13, align 8
  %51 = load i8*, i8** %13, align 8
  %52 = icmp ne i8* %51, null
  br i1 %52, label %53, label %59

53:                                               ; preds = %37
  %54 = load i8*, i8** %13, align 8
  %55 = call i64 @strstr(i8* %54, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  %56 = icmp ne i64 %55, 0
  %57 = xor i1 %56, true
  %58 = xor i1 %57, true
  br label %59

59:                                               ; preds = %53, %37
  %60 = phi i1 [ false, %37 ], [ %58, %53 ]
  %61 = zext i1 %60 to i32
  store i32 %61, i32* %14, align 4
  %62 = load i32, i32* %14, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %67

64:                                               ; preds = %59
  %65 = load i64 (i32, i32, i32, i32, i32*)*, i64 (i32, i32, i32, i32, i32*)** %12, align 8
  %66 = icmp ne i64 (i32, i32, i32, i32, i32*)* %65, null
  br i1 %66, label %68, label %67

67:                                               ; preds = %64, %59
  store i32 0, i32* %5, align 4
  br label %181

68:                                               ; preds = %64
  %69 = load %struct.ra_ctx*, %struct.ra_ctx** %6, align 8
  %70 = getelementptr inbounds %struct.ra_ctx, %struct.ra_ctx* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %76

74:                                               ; preds = %68
  %75 = load i32, i32* @GLX_CONTEXT_DEBUG_BIT_ARB, align 4
  br label %77

76:                                               ; preds = %68
  br label %77

77:                                               ; preds = %76, %74
  %78 = phi i32 [ %75, %74 ], [ 0, %76 ]
  store i32 %78, i32* %15, align 4
  %79 = load i32, i32* @GLX_CONTEXT_CORE_PROFILE_BIT_ARB, align 4
  store i32 %79, i32* %16, align 4
  %80 = load i32, i32* %9, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %92

82:                                               ; preds = %77
  %83 = load i32, i32* @GLX_CONTEXT_ES2_PROFILE_BIT_EXT, align 4
  store i32 %83, i32* %16, align 4
  %84 = load i8*, i8** %13, align 8
  %85 = icmp ne i8* %84, null
  br i1 %85, label %86, label %90

86:                                               ; preds = %82
  %87 = load i8*, i8** %13, align 8
  %88 = call i64 @strstr(i8* %87, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0))
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %91, label %90

90:                                               ; preds = %86, %82
  store i32 0, i32* %5, align 4
  br label %181

91:                                               ; preds = %86
  br label %92

92:                                               ; preds = %91, %77
  %93 = getelementptr inbounds [9 x i32], [9 x i32]* %17, i64 0, i64 0
  %94 = load i32, i32* @GLX_CONTEXT_MAJOR_VERSION_ARB, align 4
  store i32 %94, i32* %93, align 4
  %95 = getelementptr inbounds i32, i32* %93, i64 1
  %96 = load i32, i32* %8, align 4
  %97 = call i32 @MPGL_VER_GET_MAJOR(i32 %96)
  store i32 %97, i32* %95, align 4
  %98 = getelementptr inbounds i32, i32* %95, i64 1
  %99 = load i32, i32* @GLX_CONTEXT_MINOR_VERSION_ARB, align 4
  store i32 %99, i32* %98, align 4
  %100 = getelementptr inbounds i32, i32* %98, i64 1
  %101 = load i32, i32* %8, align 4
  %102 = call i32 @MPGL_VER_GET_MINOR(i32 %101)
  store i32 %102, i32* %100, align 4
  %103 = getelementptr inbounds i32, i32* %100, i64 1
  %104 = load i32, i32* @GLX_CONTEXT_PROFILE_MASK_ARB, align 4
  store i32 %104, i32* %103, align 4
  %105 = getelementptr inbounds i32, i32* %103, i64 1
  %106 = load i32, i32* %16, align 4
  store i32 %106, i32* %105, align 4
  %107 = getelementptr inbounds i32, i32* %105, i64 1
  %108 = load i32, i32* @GLX_CONTEXT_FLAGS_ARB, align 4
  store i32 %108, i32* %107, align 4
  %109 = getelementptr inbounds i32, i32* %107, i64 1
  %110 = load i32, i32* %15, align 4
  store i32 %110, i32* %109, align 4
  %111 = getelementptr inbounds i32, i32* %109, i64 1
  %112 = load i32, i32* @None, align 4
  store i32 %112, i32* %111, align 4
  %113 = call i32 @vo_x11_silence_xlib(i32 1)
  %114 = load i64 (i32, i32, i32, i32, i32*)*, i64 (i32, i32, i32, i32, i32*)** %12, align 8
  %115 = load %struct.vo*, %struct.vo** %11, align 8
  %116 = getelementptr inbounds %struct.vo, %struct.vo* %115, i32 0, i32 1
  %117 = load %struct.TYPE_4__*, %struct.TYPE_4__** %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = load %struct.priv*, %struct.priv** %10, align 8
  %121 = getelementptr inbounds %struct.priv, %struct.priv* %120, i32 0, i32 2
  %122 = load i32, i32* %121, align 8
  %123 = load i32, i32* @True, align 4
  %124 = getelementptr inbounds [9 x i32], [9 x i32]* %17, i64 0, i64 0
  %125 = call i64 %114(i32 %119, i32 %122, i32 0, i32 %123, i32* %124)
  store i64 %125, i64* %18, align 8
  %126 = call i32 @vo_x11_silence_xlib(i32 -1)
  %127 = load i64, i64* %18, align 8
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %130, label %129

129:                                              ; preds = %92
  store i32 0, i32* %5, align 4
  br label %181

130:                                              ; preds = %92
  %131 = load %struct.vo*, %struct.vo** %11, align 8
  %132 = getelementptr inbounds %struct.vo, %struct.vo* %131, i32 0, i32 1
  %133 = load %struct.TYPE_4__*, %struct.TYPE_4__** %132, align 8
  %134 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 4
  %136 = load %struct.vo*, %struct.vo** %11, align 8
  %137 = getelementptr inbounds %struct.vo, %struct.vo* %136, i32 0, i32 1
  %138 = load %struct.TYPE_4__*, %struct.TYPE_4__** %137, align 8
  %139 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %138, i32 0, i32 1
  %140 = load i32, i32* %139, align 4
  %141 = load i64, i64* %18, align 8
  %142 = call i32 @glXMakeCurrent(i32 %135, i32 %140, i64 %141)
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %154, label %144

144:                                              ; preds = %130
  %145 = load %struct.vo*, %struct.vo** %11, align 8
  %146 = call i32 @MP_FATAL(%struct.vo* %145, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0))
  %147 = load %struct.vo*, %struct.vo** %11, align 8
  %148 = getelementptr inbounds %struct.vo, %struct.vo* %147, i32 0, i32 1
  %149 = load %struct.TYPE_4__*, %struct.TYPE_4__** %148, align 8
  %150 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 4
  %152 = load i64, i64* %18, align 8
  %153 = call i32 @glXDestroyContext(i32 %151, i64 %152)
  store i32 0, i32* %5, align 4
  br label %181

154:                                              ; preds = %130
  %155 = load i64, i64* %18, align 8
  %156 = load %struct.priv*, %struct.priv** %10, align 8
  %157 = getelementptr inbounds %struct.priv, %struct.priv* %156, i32 0, i32 1
  store i64 %155, i64* %157, align 8
  %158 = load i32*, i32** %7, align 8
  %159 = load i8*, i8** %13, align 8
  %160 = load %struct.vo*, %struct.vo** %11, align 8
  %161 = getelementptr inbounds %struct.vo, %struct.vo* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 8
  %163 = call i32 @mpgl_load_functions(i32* %158, i8* bitcast (i64 (i32*)* @glXGetProcAddressARB to i8*), i8* %159, i32 %162)
  %164 = load i8*, i8** %13, align 8
  %165 = call i64 @gl_check_extension(i8* %164, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0))
  %166 = icmp ne i64 %165, 0
  br i1 %166, label %167, label %172

167:                                              ; preds = %154
  %168 = call i64 @glXGetProcAddressARB(i32* bitcast ([20 x i8]* @.str.5 to i32*))
  %169 = inttoptr i64 %168 to i8*
  %170 = load %struct.priv*, %struct.priv** %10, align 8
  %171 = getelementptr inbounds %struct.priv, %struct.priv* %170, i32 0, i32 0
  store i8* %169, i8** %171, align 8
  br label %172

172:                                              ; preds = %167, %154
  %173 = load %struct.priv*, %struct.priv** %10, align 8
  %174 = getelementptr inbounds %struct.priv, %struct.priv* %173, i32 0, i32 0
  %175 = load i8*, i8** %174, align 8
  %176 = icmp ne i8* %175, null
  br i1 %176, label %177, label %180

177:                                              ; preds = %172
  %178 = load %struct.vo*, %struct.vo** %11, align 8
  %179 = call i32 @MP_VERBOSE(%struct.vo* %178, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.6, i64 0, i64 0))
  br label %180

180:                                              ; preds = %177, %172
  store i32 1, i32* %5, align 4
  br label %181

181:                                              ; preds = %180, %144, %129, %90, %67, %36, %29
  %182 = load i32, i32* %5, align 4
  ret i32 %182
}

declare dso_local i32 @ra_gl_ctx_test_version(%struct.ra_ctx*, i32, i32) #1

declare dso_local i64 @glXGetProcAddressARB(i32*) #1

declare dso_local i8* @glXQueryExtensionsString(i32, i32) #1

declare dso_local i64 @strstr(i8*, i8*) #1

declare dso_local i32 @MPGL_VER_GET_MAJOR(i32) #1

declare dso_local i32 @MPGL_VER_GET_MINOR(i32) #1

declare dso_local i32 @vo_x11_silence_xlib(i32) #1

declare dso_local i32 @glXMakeCurrent(i32, i32, i64) #1

declare dso_local i32 @MP_FATAL(%struct.vo*, i8*) #1

declare dso_local i32 @glXDestroyContext(i32, i64) #1

declare dso_local i32 @mpgl_load_functions(i32*, i8*, i8*, i32) #1

declare dso_local i64 @gl_check_extension(i8*, i8*) #1

declare dso_local i32 @MP_VERBOSE(%struct.vo*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
