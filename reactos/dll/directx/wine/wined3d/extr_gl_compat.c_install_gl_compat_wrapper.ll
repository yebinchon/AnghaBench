; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_gl_compat.c_install_gl_compat_wrapper.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_gl_compat.c_install_gl_compat_wrapper.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wined3d_gl_info = type { i8**, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_6__, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@wine_glActiveTexture = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [51 x i8] c"ARB_multitexture emulation hooks already applied.\0A\00", align 1
@.str.1 = private unnamed_addr constant [47 x i8] c"Applying GL_ARB_multitexture emulation hooks.\0A\00", align 1
@wine_glClientActiveTextureARB = common dso_local global i32 0, align 4
@wine_glMultiTexCoord1fARB = common dso_local global i32 0, align 4
@wine_glMultiTexCoord1fvARB = common dso_local global i32 0, align 4
@wine_glMultiTexCoord2fARB = common dso_local global i32 0, align 4
@wine_glMultiTexCoord2fvARB = common dso_local global i32 0, align 4
@wine_glMultiTexCoord3fARB = common dso_local global i32 0, align 4
@wine_glMultiTexCoord3fvARB = common dso_local global i32 0, align 4
@wine_glMultiTexCoord4fARB = common dso_local global i32 0, align 4
@wine_glMultiTexCoord4fvARB = common dso_local global i32 0, align 4
@wine_glMultiTexCoord2svARB = common dso_local global i32 0, align 4
@wine_glMultiTexCoord4svARB = common dso_local global i32 0, align 4
@old_multitex_glGetIntegerv = common dso_local global i32 0, align 4
@wine_glGetIntegerv = common dso_local global i32 0, align 4
@old_multitex_glGetFloatv = common dso_local global i32 0, align 4
@wine_glGetFloatv = common dso_local global i32 0, align 4
@old_multitex_glGetDoublev = common dso_local global i32 0, align 4
@wine_glGetDoublev = common dso_local global i32 0, align 4
@TRUE = common dso_local global i8* null, align 8
@wine_glFogi = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [48 x i8] c"EXT_fog_coord emulation hooks already applied.\0A\00", align 1
@.str.3 = private unnamed_addr constant [43 x i8] c"Applying GL_ARB_fog_coord emulation hooks\0A\00", align 1
@ARB_FRAGMENT_PROGRAM = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [77 x i8] c"GL implementation supports GL_ARB_fragment_program but not GL_EXT_fog_coord\0A\00", align 1
@.str.5 = private unnamed_addr constant [47 x i8] c"The fog coord emulation will most likely fail\0A\00", align 1
@ARB_FRAGMENT_SHADER = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [76 x i8] c"GL implementation supports GL_ARB_fragment_shader but not GL_EXT_fog_coord\0A\00", align 1
@old_fogcoord_glFogi = common dso_local global i32 0, align 4
@old_fogcoord_glFogiv = common dso_local global i32 0, align 4
@wine_glFogiv = common dso_local global i32 0, align 4
@old_fogcoord_glFogf = common dso_local global i32 0, align 4
@wine_glFogf = common dso_local global i32 0, align 4
@old_fogcoord_glFogfv = common dso_local global i32 0, align 4
@wine_glFogfv = common dso_local global i32 0, align 4
@glEnableWINE = common dso_local global i32 0, align 4
@old_fogcoord_glEnable = common dso_local global i32 0, align 4
@wine_glEnable = common dso_local global i32 0, align 4
@glDisableWINE = common dso_local global i32 0, align 4
@old_fogcoord_glDisable = common dso_local global i32 0, align 4
@wine_glDisable = common dso_local global i32 0, align 4
@old_fogcoord_glVertex4f = common dso_local global i32 0, align 4
@wine_glVertex4f = common dso_local global i32 0, align 4
@wine_glVertex4fv = common dso_local global i32 0, align 4
@wine_glVertex3f = common dso_local global i32 0, align 4
@wine_glVertex3fv = common dso_local global i32 0, align 4
@old_fogcoord_glColor4f = common dso_local global i32 0, align 4
@wine_glColor4f = common dso_local global i32 0, align 4
@wine_glColor4fv = common dso_local global i32 0, align 4
@wine_glColor3f = common dso_local global i32 0, align 4
@wine_glColor3fv = common dso_local global i32 0, align 4
@wine_glColor4ub = common dso_local global i32 0, align 4
@wine_glFogCoordfEXT = common dso_local global i32 0, align 4
@wine_glFogCoordfvEXT = common dso_local global i32 0, align 4
@wine_glFogCoorddEXT = common dso_local global i32 0, align 4
@wine_glFogCoorddvEXT = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [39 x i8] c"Extension %u emulation not supported.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @install_gl_compat_wrapper(%struct.wined3d_gl_info* %0, i32 %1) #0 {
  %3 = alloca %struct.wined3d_gl_info*, align 8
  %4 = alloca i32, align 4
  store %struct.wined3d_gl_info* %0, %struct.wined3d_gl_info** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  switch i32 %5, label %288 [
    i32 129, label %6
    i32 128, label %121
  ]

6:                                                ; preds = %2
  %7 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %3, align 8
  %8 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %7, i32 0, i32 0
  %9 = load i8**, i8*** %8, align 8
  %10 = getelementptr inbounds i8*, i8** %9, i64 129
  %11 = load i8*, i8** %10, align 8
  %12 = icmp ne i8* %11, null
  br i1 %12, label %13, label %14

13:                                               ; preds = %6
  br label %291

14:                                               ; preds = %6
  %15 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %3, align 8
  %16 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 15
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @wine_glActiveTexture, align 4
  %21 = icmp eq i32 %19, %20
  br i1 %21, label %22, label %24

22:                                               ; preds = %14
  %23 = call i32 (i8*, ...) @FIXME(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0))
  br label %291

24:                                               ; preds = %14
  %25 = call i32 @TRACE(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0))
  %26 = load i32, i32* @wine_glActiveTexture, align 4
  %27 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %3, align 8
  %28 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 15
  store i32 %26, i32* %30, align 4
  %31 = load i32, i32* @wine_glClientActiveTextureARB, align 4
  %32 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %3, align 8
  %33 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 14
  store i32 %31, i32* %35, align 8
  %36 = load i32, i32* @wine_glMultiTexCoord1fARB, align 4
  %37 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %3, align 8
  %38 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 13
  store i32 %36, i32* %40, align 4
  %41 = load i32, i32* @wine_glMultiTexCoord1fvARB, align 4
  %42 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %3, align 8
  %43 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 12
  store i32 %41, i32* %45, align 8
  %46 = load i32, i32* @wine_glMultiTexCoord2fARB, align 4
  %47 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %3, align 8
  %48 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 11
  store i32 %46, i32* %50, align 4
  %51 = load i32, i32* @wine_glMultiTexCoord2fvARB, align 4
  %52 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %3, align 8
  %53 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 10
  store i32 %51, i32* %55, align 8
  %56 = load i32, i32* @wine_glMultiTexCoord3fARB, align 4
  %57 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %3, align 8
  %58 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %57, i32 0, i32 1
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 9
  store i32 %56, i32* %60, align 4
  %61 = load i32, i32* @wine_glMultiTexCoord3fvARB, align 4
  %62 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %3, align 8
  %63 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %62, i32 0, i32 1
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 8
  store i32 %61, i32* %65, align 8
  %66 = load i32, i32* @wine_glMultiTexCoord4fARB, align 4
  %67 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %3, align 8
  %68 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %67, i32 0, i32 1
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 7
  store i32 %66, i32* %70, align 4
  %71 = load i32, i32* @wine_glMultiTexCoord4fvARB, align 4
  %72 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %3, align 8
  %73 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %72, i32 0, i32 1
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i32 0, i32 6
  store i32 %71, i32* %75, align 8
  %76 = load i32, i32* @wine_glMultiTexCoord2svARB, align 4
  %77 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %3, align 8
  %78 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %77, i32 0, i32 1
  %79 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i32 0, i32 5
  store i32 %76, i32* %80, align 4
  %81 = load i32, i32* @wine_glMultiTexCoord4svARB, align 4
  %82 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %3, align 8
  %83 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %82, i32 0, i32 1
  %84 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %84, i32 0, i32 4
  store i32 %81, i32* %85, align 8
  %86 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %3, align 8
  %87 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %86, i32 0, i32 1
  %88 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %87, i32 0, i32 1
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %88, i32 0, i32 15
  %90 = load i32, i32* %89, align 4
  store i32 %90, i32* @old_multitex_glGetIntegerv, align 4
  %91 = load i32, i32* @wine_glGetIntegerv, align 4
  %92 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %3, align 8
  %93 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %92, i32 0, i32 1
  %94 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %93, i32 0, i32 1
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %94, i32 0, i32 15
  store i32 %91, i32* %95, align 4
  %96 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %3, align 8
  %97 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %96, i32 0, i32 1
  %98 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %97, i32 0, i32 1
  %99 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %98, i32 0, i32 14
  %100 = load i32, i32* %99, align 8
  store i32 %100, i32* @old_multitex_glGetFloatv, align 4
  %101 = load i32, i32* @wine_glGetFloatv, align 4
  %102 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %3, align 8
  %103 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %102, i32 0, i32 1
  %104 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %103, i32 0, i32 1
  %105 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %104, i32 0, i32 14
  store i32 %101, i32* %105, align 8
  %106 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %3, align 8
  %107 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %106, i32 0, i32 1
  %108 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %107, i32 0, i32 1
  %109 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %108, i32 0, i32 13
  %110 = load i32, i32* %109, align 4
  store i32 %110, i32* @old_multitex_glGetDoublev, align 4
  %111 = load i32, i32* @wine_glGetDoublev, align 4
  %112 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %3, align 8
  %113 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %112, i32 0, i32 1
  %114 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %113, i32 0, i32 1
  %115 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %114, i32 0, i32 13
  store i32 %111, i32* %115, align 4
  %116 = load i8*, i8** @TRUE, align 8
  %117 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %3, align 8
  %118 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %117, i32 0, i32 0
  %119 = load i8**, i8*** %118, align 8
  %120 = getelementptr inbounds i8*, i8** %119, i64 129
  store i8* %116, i8** %120, align 8
  br label %291

121:                                              ; preds = %2
  %122 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %3, align 8
  %123 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %122, i32 0, i32 0
  %124 = load i8**, i8*** %123, align 8
  %125 = getelementptr inbounds i8*, i8** %124, i64 128
  %126 = load i8*, i8** %125, align 8
  %127 = icmp ne i8* %126, null
  br i1 %127, label %128, label %129

128:                                              ; preds = %121
  br label %291

129:                                              ; preds = %121
  %130 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %3, align 8
  %131 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %130, i32 0, i32 1
  %132 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %131, i32 0, i32 1
  %133 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %132, i32 0, i32 12
  %134 = load i32, i32* %133, align 8
  %135 = load i32, i32* @wine_glFogi, align 4
  %136 = icmp eq i32 %134, %135
  br i1 %136, label %137, label %139

137:                                              ; preds = %129
  %138 = call i32 (i8*, ...) @FIXME(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.2, i64 0, i64 0))
  br label %291

139:                                              ; preds = %129
  %140 = call i32 @TRACE(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.3, i64 0, i64 0))
  %141 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %3, align 8
  %142 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %141, i32 0, i32 0
  %143 = load i8**, i8*** %142, align 8
  %144 = load i64, i64* @ARB_FRAGMENT_PROGRAM, align 8
  %145 = getelementptr inbounds i8*, i8** %143, i64 %144
  %146 = load i8*, i8** %145, align 8
  %147 = icmp ne i8* %146, null
  br i1 %147, label %148, label %151

148:                                              ; preds = %139
  %149 = call i32 (i8*, ...) @FIXME(i8* getelementptr inbounds ([77 x i8], [77 x i8]* @.str.4, i64 0, i64 0))
  %150 = call i32 (i8*, ...) @FIXME(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.5, i64 0, i64 0))
  br label %163

151:                                              ; preds = %139
  %152 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %3, align 8
  %153 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %152, i32 0, i32 0
  %154 = load i8**, i8*** %153, align 8
  %155 = load i64, i64* @ARB_FRAGMENT_SHADER, align 8
  %156 = getelementptr inbounds i8*, i8** %154, i64 %155
  %157 = load i8*, i8** %156, align 8
  %158 = icmp ne i8* %157, null
  br i1 %158, label %159, label %162

159:                                              ; preds = %151
  %160 = call i32 (i8*, ...) @FIXME(i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.6, i64 0, i64 0))
  %161 = call i32 (i8*, ...) @FIXME(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.5, i64 0, i64 0))
  br label %162

162:                                              ; preds = %159, %151
  br label %163

163:                                              ; preds = %162, %148
  %164 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %3, align 8
  %165 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %164, i32 0, i32 1
  %166 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %165, i32 0, i32 1
  %167 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %166, i32 0, i32 12
  %168 = load i32, i32* %167, align 8
  store i32 %168, i32* @old_fogcoord_glFogi, align 4
  %169 = load i32, i32* @wine_glFogi, align 4
  %170 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %3, align 8
  %171 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %170, i32 0, i32 1
  %172 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %171, i32 0, i32 1
  %173 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %172, i32 0, i32 12
  store i32 %169, i32* %173, align 8
  %174 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %3, align 8
  %175 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %174, i32 0, i32 1
  %176 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %175, i32 0, i32 1
  %177 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %176, i32 0, i32 11
  %178 = load i32, i32* %177, align 4
  store i32 %178, i32* @old_fogcoord_glFogiv, align 4
  %179 = load i32, i32* @wine_glFogiv, align 4
  %180 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %3, align 8
  %181 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %180, i32 0, i32 1
  %182 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %181, i32 0, i32 1
  %183 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %182, i32 0, i32 11
  store i32 %179, i32* %183, align 4
  %184 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %3, align 8
  %185 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %184, i32 0, i32 1
  %186 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %185, i32 0, i32 1
  %187 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %186, i32 0, i32 10
  %188 = load i32, i32* %187, align 8
  store i32 %188, i32* @old_fogcoord_glFogf, align 4
  %189 = load i32, i32* @wine_glFogf, align 4
  %190 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %3, align 8
  %191 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %190, i32 0, i32 1
  %192 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %191, i32 0, i32 1
  %193 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %192, i32 0, i32 10
  store i32 %189, i32* %193, align 8
  %194 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %3, align 8
  %195 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %194, i32 0, i32 1
  %196 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %195, i32 0, i32 1
  %197 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %196, i32 0, i32 9
  %198 = load i32, i32* %197, align 4
  store i32 %198, i32* @old_fogcoord_glFogfv, align 4
  %199 = load i32, i32* @wine_glFogfv, align 4
  %200 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %3, align 8
  %201 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %200, i32 0, i32 1
  %202 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %201, i32 0, i32 1
  %203 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %202, i32 0, i32 9
  store i32 %199, i32* %203, align 4
  %204 = load i32, i32* @glEnableWINE, align 4
  store i32 %204, i32* @old_fogcoord_glEnable, align 4
  %205 = load i32, i32* @wine_glEnable, align 4
  store i32 %205, i32* @glEnableWINE, align 4
  %206 = load i32, i32* @glDisableWINE, align 4
  store i32 %206, i32* @old_fogcoord_glDisable, align 4
  %207 = load i32, i32* @wine_glDisable, align 4
  store i32 %207, i32* @glDisableWINE, align 4
  %208 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %3, align 8
  %209 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %208, i32 0, i32 1
  %210 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %209, i32 0, i32 1
  %211 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %210, i32 0, i32 8
  %212 = load i32, i32* %211, align 8
  store i32 %212, i32* @old_fogcoord_glVertex4f, align 4
  %213 = load i32, i32* @wine_glVertex4f, align 4
  %214 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %3, align 8
  %215 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %214, i32 0, i32 1
  %216 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %215, i32 0, i32 1
  %217 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %216, i32 0, i32 8
  store i32 %213, i32* %217, align 8
  %218 = load i32, i32* @wine_glVertex4fv, align 4
  %219 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %3, align 8
  %220 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %219, i32 0, i32 1
  %221 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %220, i32 0, i32 1
  %222 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %221, i32 0, i32 7
  store i32 %218, i32* %222, align 4
  %223 = load i32, i32* @wine_glVertex3f, align 4
  %224 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %3, align 8
  %225 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %224, i32 0, i32 1
  %226 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %225, i32 0, i32 1
  %227 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %226, i32 0, i32 6
  store i32 %223, i32* %227, align 8
  %228 = load i32, i32* @wine_glVertex3fv, align 4
  %229 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %3, align 8
  %230 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %229, i32 0, i32 1
  %231 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %230, i32 0, i32 1
  %232 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %231, i32 0, i32 5
  store i32 %228, i32* %232, align 4
  %233 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %3, align 8
  %234 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %233, i32 0, i32 1
  %235 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %234, i32 0, i32 1
  %236 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %235, i32 0, i32 4
  %237 = load i32, i32* %236, align 8
  store i32 %237, i32* @old_fogcoord_glColor4f, align 4
  %238 = load i32, i32* @wine_glColor4f, align 4
  %239 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %3, align 8
  %240 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %239, i32 0, i32 1
  %241 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %240, i32 0, i32 1
  %242 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %241, i32 0, i32 4
  store i32 %238, i32* %242, align 8
  %243 = load i32, i32* @wine_glColor4fv, align 4
  %244 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %3, align 8
  %245 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %244, i32 0, i32 1
  %246 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %245, i32 0, i32 1
  %247 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %246, i32 0, i32 3
  store i32 %243, i32* %247, align 4
  %248 = load i32, i32* @wine_glColor3f, align 4
  %249 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %3, align 8
  %250 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %249, i32 0, i32 1
  %251 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %250, i32 0, i32 1
  %252 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %251, i32 0, i32 2
  store i32 %248, i32* %252, align 8
  %253 = load i32, i32* @wine_glColor3fv, align 4
  %254 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %3, align 8
  %255 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %254, i32 0, i32 1
  %256 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %255, i32 0, i32 1
  %257 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %256, i32 0, i32 1
  store i32 %253, i32* %257, align 4
  %258 = load i32, i32* @wine_glColor4ub, align 4
  %259 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %3, align 8
  %260 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %259, i32 0, i32 1
  %261 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %260, i32 0, i32 1
  %262 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %261, i32 0, i32 0
  store i32 %258, i32* %262, align 8
  %263 = load i32, i32* @wine_glFogCoordfEXT, align 4
  %264 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %3, align 8
  %265 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %264, i32 0, i32 1
  %266 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %265, i32 0, i32 0
  %267 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %266, i32 0, i32 3
  store i32 %263, i32* %267, align 4
  %268 = load i32, i32* @wine_glFogCoordfvEXT, align 4
  %269 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %3, align 8
  %270 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %269, i32 0, i32 1
  %271 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %270, i32 0, i32 0
  %272 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %271, i32 0, i32 2
  store i32 %268, i32* %272, align 8
  %273 = load i32, i32* @wine_glFogCoorddEXT, align 4
  %274 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %3, align 8
  %275 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %274, i32 0, i32 1
  %276 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %275, i32 0, i32 0
  %277 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %276, i32 0, i32 1
  store i32 %273, i32* %277, align 4
  %278 = load i32, i32* @wine_glFogCoorddvEXT, align 4
  %279 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %3, align 8
  %280 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %279, i32 0, i32 1
  %281 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %280, i32 0, i32 0
  %282 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %281, i32 0, i32 0
  store i32 %278, i32* %282, align 8
  %283 = load i8*, i8** @TRUE, align 8
  %284 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %3, align 8
  %285 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %284, i32 0, i32 0
  %286 = load i8**, i8*** %285, align 8
  %287 = getelementptr inbounds i8*, i8** %286, i64 128
  store i8* %283, i8** %287, align 8
  br label %291

288:                                              ; preds = %2
  %289 = load i32, i32* %4, align 4
  %290 = call i32 (i8*, ...) @FIXME(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.7, i64 0, i64 0), i32 %289)
  br label %291

291:                                              ; preds = %13, %22, %24, %128, %137, %163, %288
  ret void
}

declare dso_local i32 @FIXME(i8*, ...) #1

declare dso_local i32 @TRACE(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
