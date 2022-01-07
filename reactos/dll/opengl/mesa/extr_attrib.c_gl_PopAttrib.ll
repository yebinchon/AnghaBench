; ModuleID = '/home/carl/AnghaBench/reactos/dll/opengl/mesa/extr_attrib.c_gl_PopAttrib.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/opengl/mesa/extr_attrib.c_gl_PopAttrib.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64, i32, %struct.TYPE_9__, %struct.TYPE_9__, %struct.TYPE_9__, %struct.TYPE_9__, %struct.TYPE_9__, %struct.TYPE_9__*, %struct.TYPE_9__, %struct.TYPE_9__, %struct.TYPE_9__, %struct.TYPE_9__, %struct.TYPE_9__, %struct.TYPE_9__, %struct.TYPE_9__, %struct.TYPE_9__, %struct.TYPE_9__, %struct.TYPE_9__, %struct.TYPE_9__, %struct.TYPE_9__, %struct.TYPE_9__, %struct.gl_attrib_node** }
%struct.TYPE_9__ = type { i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32*, i32, i32 }
%struct.gl_attrib_node = type { i32, i64, %struct.gl_attrib_node* }
%struct.gl_enable_attrib = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32*, i32, i32, i32 }

@GL_INVALID_OPERATION = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"glPopAttrib\00", align 1
@GL_STACK_UNDERFLOW = common dso_local global i32 0, align 4
@MAX_CLIP_PLANES = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [29 x i8] c"Bad attrib flag in PopAttrib\00", align 1
@NEW_ALL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gl_PopAttrib(%struct.TYPE_8__* %0) #0 {
  %2 = alloca %struct.TYPE_8__*, align 8
  %3 = alloca %struct.gl_attrib_node*, align 8
  %4 = alloca %struct.gl_attrib_node*, align 8
  %5 = alloca %struct.gl_enable_attrib*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %2, align 8
  %8 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %9 = call i64 @INSIDE_BEGIN_END(%struct.TYPE_8__* %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %15

11:                                               ; preds = %1
  %12 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %13 = load i32, i32* @GL_INVALID_OPERATION, align 4
  %14 = call i32 @gl_error(%struct.TYPE_8__* %12, i32 %13, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  br label %517

15:                                               ; preds = %1
  %16 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %17 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp eq i64 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %15
  %21 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %22 = load i32, i32* @GL_STACK_UNDERFLOW, align 4
  %23 = call i32 @gl_error(%struct.TYPE_8__* %21, i32 %22, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  br label %517

24:                                               ; preds = %15
  %25 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = add i64 %27, -1
  store i64 %28, i64* %26, align 8
  %29 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 21
  %31 = load %struct.gl_attrib_node**, %struct.gl_attrib_node*** %30, align 8
  %32 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = getelementptr inbounds %struct.gl_attrib_node*, %struct.gl_attrib_node** %31, i64 %34
  %36 = load %struct.gl_attrib_node*, %struct.gl_attrib_node** %35, align 8
  store %struct.gl_attrib_node* %36, %struct.gl_attrib_node** %3, align 8
  br label %37

37:                                               ; preds = %500, %24
  %38 = load %struct.gl_attrib_node*, %struct.gl_attrib_node** %3, align 8
  %39 = icmp ne %struct.gl_attrib_node* %38, null
  br i1 %39, label %40, label %513

40:                                               ; preds = %37
  %41 = load %struct.gl_attrib_node*, %struct.gl_attrib_node** %3, align 8
  %42 = getelementptr inbounds %struct.gl_attrib_node, %struct.gl_attrib_node* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  switch i32 %43, label %497 [
    i32 147, label %44
    i32 146, label %51
    i32 145, label %76
    i32 144, label %83
    i32 143, label %90
    i32 142, label %391
    i32 141, label %398
    i32 140, label %405
    i32 139, label %412
    i32 138, label %419
    i32 137, label %426
    i32 136, label %433
    i32 135, label %440
    i32 134, label %447
    i32 133, label %454
    i32 132, label %462
    i32 131, label %469
    i32 129, label %476
    i32 130, label %483
    i32 128, label %490
  ]

44:                                               ; preds = %40
  %45 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %45, i32 0, i32 20
  %47 = load %struct.gl_attrib_node*, %struct.gl_attrib_node** %3, align 8
  %48 = getelementptr inbounds %struct.gl_attrib_node, %struct.gl_attrib_node* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = call i32 @MEMCPY(%struct.TYPE_9__* %46, i64 %49, i32 4)
  br label %500

51:                                               ; preds = %40
  %52 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %52, i32 0, i32 17
  %54 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  store i64 %55, i64* %7, align 8
  %56 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %57 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %56, i32 0, i32 17
  %58 = load %struct.gl_attrib_node*, %struct.gl_attrib_node** %3, align 8
  %59 = getelementptr inbounds %struct.gl_attrib_node, %struct.gl_attrib_node* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = call i32 @MEMCPY(%struct.TYPE_9__* %57, i64 %60, i32 4)
  %62 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %63 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %62, i32 0, i32 17
  %64 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* %7, align 8
  %67 = icmp ne i64 %65, %66
  br i1 %67, label %68, label %75

68:                                               ; preds = %51
  %69 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %70 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %71 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %70, i32 0, i32 17
  %72 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = call i32 @gl_DrawBuffer(%struct.TYPE_8__* %69, i64 %73)
  br label %75

75:                                               ; preds = %68, %51
  br label %500

76:                                               ; preds = %40
  %77 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %78 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %77, i32 0, i32 19
  %79 = load %struct.gl_attrib_node*, %struct.gl_attrib_node** %3, align 8
  %80 = getelementptr inbounds %struct.gl_attrib_node, %struct.gl_attrib_node* %79, i32 0, i32 1
  %81 = load i64, i64* %80, align 8
  %82 = call i32 @MEMCPY(%struct.TYPE_9__* %78, i64 %81, i32 4)
  br label %500

83:                                               ; preds = %40
  %84 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %85 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %84, i32 0, i32 18
  %86 = load %struct.gl_attrib_node*, %struct.gl_attrib_node** %3, align 8
  %87 = getelementptr inbounds %struct.gl_attrib_node, %struct.gl_attrib_node* %86, i32 0, i32 1
  %88 = load i64, i64* %87, align 8
  %89 = call i32 @MEMCPY(%struct.TYPE_9__* %85, i64 %88, i32 4)
  br label %500

90:                                               ; preds = %40
  %91 = load %struct.gl_attrib_node*, %struct.gl_attrib_node** %3, align 8
  %92 = getelementptr inbounds %struct.gl_attrib_node, %struct.gl_attrib_node* %91, i32 0, i32 1
  %93 = load i64, i64* %92, align 8
  %94 = inttoptr i64 %93 to %struct.gl_enable_attrib*
  store %struct.gl_enable_attrib* %94, %struct.gl_enable_attrib** %5, align 8
  %95 = load %struct.gl_enable_attrib*, %struct.gl_enable_attrib** %5, align 8
  %96 = getelementptr inbounds %struct.gl_enable_attrib, %struct.gl_enable_attrib* %95, i32 0, i32 42
  %97 = load i32, i32* %96, align 8
  %98 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %99 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %98, i32 0, i32 17
  %100 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %99, i32 0, i32 36
  store i32 %97, i32* %100, align 4
  %101 = load %struct.gl_enable_attrib*, %struct.gl_enable_attrib** %5, align 8
  %102 = getelementptr inbounds %struct.gl_enable_attrib, %struct.gl_enable_attrib* %101, i32 0, i32 41
  %103 = load i32, i32* %102, align 4
  %104 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %105 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %104, i32 0, i32 4
  %106 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %105, i32 0, i32 9
  store i32 %103, i32* %106, align 8
  %107 = load %struct.gl_enable_attrib*, %struct.gl_enable_attrib** %5, align 8
  %108 = getelementptr inbounds %struct.gl_enable_attrib, %struct.gl_enable_attrib* %107, i32 0, i32 40
  %109 = load i32, i32* %108, align 8
  %110 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %111 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %110, i32 0, i32 17
  %112 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %111, i32 0, i32 35
  store i32 %109, i32* %112, align 8
  store i64 0, i64* %6, align 8
  br label %113

113:                                              ; preds = %130, %90
  %114 = load i64, i64* %6, align 8
  %115 = load i64, i64* @MAX_CLIP_PLANES, align 8
  %116 = icmp ult i64 %114, %115
  br i1 %116, label %117, label %133

117:                                              ; preds = %113
  %118 = load %struct.gl_enable_attrib*, %struct.gl_enable_attrib** %5, align 8
  %119 = getelementptr inbounds %struct.gl_enable_attrib, %struct.gl_enable_attrib* %118, i32 0, i32 39
  %120 = load i32*, i32** %119, align 8
  %121 = load i64, i64* %6, align 8
  %122 = getelementptr inbounds i32, i32* %120, i64 %121
  %123 = load i32, i32* %122, align 4
  %124 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %125 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %124, i32 0, i32 4
  %126 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %125, i32 0, i32 34
  %127 = load i32*, i32** %126, align 8
  %128 = load i64, i64* %6, align 8
  %129 = getelementptr inbounds i32, i32* %127, i64 %128
  store i32 %123, i32* %129, align 4
  br label %130

130:                                              ; preds = %117
  %131 = load i64, i64* %6, align 8
  %132 = add i64 %131, 1
  store i64 %132, i64* %6, align 8
  br label %113

133:                                              ; preds = %113
  %134 = load %struct.gl_enable_attrib*, %struct.gl_enable_attrib** %5, align 8
  %135 = getelementptr inbounds %struct.gl_enable_attrib, %struct.gl_enable_attrib* %134, i32 0, i32 38
  %136 = load i32, i32* %135, align 8
  %137 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %138 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %137, i32 0, i32 13
  %139 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %138, i32 0, i32 33
  store i32 %136, i32* %139, align 8
  %140 = load %struct.gl_enable_attrib*, %struct.gl_enable_attrib** %5, align 8
  %141 = getelementptr inbounds %struct.gl_enable_attrib, %struct.gl_enable_attrib* %140, i32 0, i32 37
  %142 = load i32, i32* %141, align 4
  %143 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %144 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %143, i32 0, i32 8
  %145 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %144, i32 0, i32 32
  store i32 %142, i32* %145, align 4
  %146 = load %struct.gl_enable_attrib*, %struct.gl_enable_attrib** %5, align 8
  %147 = getelementptr inbounds %struct.gl_enable_attrib, %struct.gl_enable_attrib* %146, i32 0, i32 36
  %148 = load i32, i32* %147, align 8
  %149 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %150 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %149, i32 0, i32 18
  %151 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %150, i32 0, i32 31
  store i32 %148, i32* %151, align 8
  %152 = load %struct.gl_enable_attrib*, %struct.gl_enable_attrib** %5, align 8
  %153 = getelementptr inbounds %struct.gl_enable_attrib, %struct.gl_enable_attrib* %152, i32 0, i32 35
  %154 = load i32, i32* %153, align 4
  %155 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %156 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %155, i32 0, i32 17
  %157 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %156, i32 0, i32 30
  store i32 %154, i32* %157, align 4
  %158 = load %struct.gl_enable_attrib*, %struct.gl_enable_attrib** %5, align 8
  %159 = getelementptr inbounds %struct.gl_enable_attrib, %struct.gl_enable_attrib* %158, i32 0, i32 34
  %160 = load i32, i32* %159, align 8
  %161 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %162 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %161, i32 0, i32 15
  %163 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %162, i32 0, i32 3
  store i32 %160, i32* %163, align 8
  %164 = load %struct.gl_enable_attrib*, %struct.gl_enable_attrib** %5, align 8
  %165 = getelementptr inbounds %struct.gl_enable_attrib, %struct.gl_enable_attrib* %164, i32 0, i32 33
  %166 = load i32, i32* %165, align 4
  %167 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %168 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %167, i32 0, i32 13
  %169 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %168, i32 0, i32 3
  store i32 %166, i32* %169, align 8
  %170 = load %struct.gl_enable_attrib*, %struct.gl_enable_attrib** %5, align 8
  %171 = getelementptr inbounds %struct.gl_enable_attrib, %struct.gl_enable_attrib* %170, i32 0, i32 32
  %172 = load i32, i32* %171, align 8
  %173 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %174 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %173, i32 0, i32 12
  %175 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %174, i32 0, i32 5
  store i32 %172, i32* %175, align 8
  %176 = load %struct.gl_enable_attrib*, %struct.gl_enable_attrib** %5, align 8
  %177 = getelementptr inbounds %struct.gl_enable_attrib, %struct.gl_enable_attrib* %176, i32 0, i32 31
  %178 = load i32, i32* %177, align 4
  %179 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %180 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %179, i32 0, i32 12
  %181 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %180, i32 0, i32 4
  store i32 %178, i32* %181, align 4
  %182 = load %struct.gl_enable_attrib*, %struct.gl_enable_attrib** %5, align 8
  %183 = getelementptr inbounds %struct.gl_enable_attrib, %struct.gl_enable_attrib* %182, i32 0, i32 30
  %184 = load i32, i32* %183, align 8
  %185 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %186 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %185, i32 0, i32 17
  %187 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %186, i32 0, i32 29
  store i32 %184, i32* %187, align 8
  %188 = load %struct.gl_enable_attrib*, %struct.gl_enable_attrib** %5, align 8
  %189 = getelementptr inbounds %struct.gl_enable_attrib, %struct.gl_enable_attrib* %188, i32 0, i32 29
  %190 = load i32, i32* %189, align 4
  %191 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %192 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %191, i32 0, i32 17
  %193 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %192, i32 0, i32 28
  store i32 %190, i32* %193, align 4
  %194 = load %struct.gl_enable_attrib*, %struct.gl_enable_attrib** %5, align 8
  %195 = getelementptr inbounds %struct.gl_enable_attrib, %struct.gl_enable_attrib* %194, i32 0, i32 28
  %196 = load i32, i32* %195, align 8
  %197 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %198 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %197, i32 0, i32 16
  %199 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %198, i32 0, i32 27
  store i32 %196, i32* %199, align 8
  %200 = load %struct.gl_enable_attrib*, %struct.gl_enable_attrib** %5, align 8
  %201 = getelementptr inbounds %struct.gl_enable_attrib, %struct.gl_enable_attrib* %200, i32 0, i32 27
  %202 = load i32, i32* %201, align 4
  %203 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %204 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %203, i32 0, i32 16
  %205 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %204, i32 0, i32 26
  store i32 %202, i32* %205, align 4
  %206 = load %struct.gl_enable_attrib*, %struct.gl_enable_attrib** %5, align 8
  %207 = getelementptr inbounds %struct.gl_enable_attrib, %struct.gl_enable_attrib* %206, i32 0, i32 26
  %208 = load i32, i32* %207, align 8
  %209 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %210 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %209, i32 0, i32 16
  %211 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %210, i32 0, i32 25
  store i32 %208, i32* %211, align 8
  %212 = load %struct.gl_enable_attrib*, %struct.gl_enable_attrib** %5, align 8
  %213 = getelementptr inbounds %struct.gl_enable_attrib, %struct.gl_enable_attrib* %212, i32 0, i32 25
  %214 = load i32, i32* %213, align 4
  %215 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %216 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %215, i32 0, i32 16
  %217 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %216, i32 0, i32 24
  store i32 %214, i32* %217, align 4
  %218 = load %struct.gl_enable_attrib*, %struct.gl_enable_attrib** %5, align 8
  %219 = getelementptr inbounds %struct.gl_enable_attrib, %struct.gl_enable_attrib* %218, i32 0, i32 24
  %220 = load i32, i32* %219, align 8
  %221 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %222 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %221, i32 0, i32 16
  %223 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %222, i32 0, i32 23
  store i32 %220, i32* %223, align 8
  %224 = load %struct.gl_enable_attrib*, %struct.gl_enable_attrib** %5, align 8
  %225 = getelementptr inbounds %struct.gl_enable_attrib, %struct.gl_enable_attrib* %224, i32 0, i32 23
  %226 = load i32, i32* %225, align 4
  %227 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %228 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %227, i32 0, i32 16
  %229 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %228, i32 0, i32 22
  store i32 %226, i32* %229, align 4
  %230 = load %struct.gl_enable_attrib*, %struct.gl_enable_attrib** %5, align 8
  %231 = getelementptr inbounds %struct.gl_enable_attrib, %struct.gl_enable_attrib* %230, i32 0, i32 22
  %232 = load i32, i32* %231, align 8
  %233 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %234 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %233, i32 0, i32 16
  %235 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %234, i32 0, i32 21
  store i32 %232, i32* %235, align 8
  %236 = load %struct.gl_enable_attrib*, %struct.gl_enable_attrib** %5, align 8
  %237 = getelementptr inbounds %struct.gl_enable_attrib, %struct.gl_enable_attrib* %236, i32 0, i32 21
  %238 = load i32, i32* %237, align 4
  %239 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %240 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %239, i32 0, i32 16
  %241 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %240, i32 0, i32 20
  store i32 %238, i32* %241, align 4
  %242 = load %struct.gl_enable_attrib*, %struct.gl_enable_attrib** %5, align 8
  %243 = getelementptr inbounds %struct.gl_enable_attrib, %struct.gl_enable_attrib* %242, i32 0, i32 20
  %244 = load i32, i32* %243, align 8
  %245 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %246 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %245, i32 0, i32 16
  %247 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %246, i32 0, i32 19
  store i32 %244, i32* %247, align 8
  %248 = load %struct.gl_enable_attrib*, %struct.gl_enable_attrib** %5, align 8
  %249 = getelementptr inbounds %struct.gl_enable_attrib, %struct.gl_enable_attrib* %248, i32 0, i32 19
  %250 = load i32, i32* %249, align 4
  %251 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %252 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %251, i32 0, i32 16
  %253 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %252, i32 0, i32 18
  store i32 %250, i32* %253, align 4
  %254 = load %struct.gl_enable_attrib*, %struct.gl_enable_attrib** %5, align 8
  %255 = getelementptr inbounds %struct.gl_enable_attrib, %struct.gl_enable_attrib* %254, i32 0, i32 18
  %256 = load i32, i32* %255, align 8
  %257 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %258 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %257, i32 0, i32 16
  %259 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %258, i32 0, i32 17
  store i32 %256, i32* %259, align 8
  %260 = load %struct.gl_enable_attrib*, %struct.gl_enable_attrib** %5, align 8
  %261 = getelementptr inbounds %struct.gl_enable_attrib, %struct.gl_enable_attrib* %260, i32 0, i32 17
  %262 = load i32, i32* %261, align 4
  %263 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %264 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %263, i32 0, i32 16
  %265 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %264, i32 0, i32 16
  store i32 %262, i32* %265, align 4
  %266 = load %struct.gl_enable_attrib*, %struct.gl_enable_attrib** %5, align 8
  %267 = getelementptr inbounds %struct.gl_enable_attrib, %struct.gl_enable_attrib* %266, i32 0, i32 16
  %268 = load i32, i32* %267, align 8
  %269 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %270 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %269, i32 0, i32 16
  %271 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %270, i32 0, i32 15
  store i32 %268, i32* %271, align 8
  %272 = load %struct.gl_enable_attrib*, %struct.gl_enable_attrib** %5, align 8
  %273 = getelementptr inbounds %struct.gl_enable_attrib, %struct.gl_enable_attrib* %272, i32 0, i32 15
  %274 = load i32, i32* %273, align 4
  %275 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %276 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %275, i32 0, i32 16
  %277 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %276, i32 0, i32 14
  store i32 %274, i32* %277, align 4
  %278 = load %struct.gl_enable_attrib*, %struct.gl_enable_attrib** %5, align 8
  %279 = getelementptr inbounds %struct.gl_enable_attrib, %struct.gl_enable_attrib* %278, i32 0, i32 14
  %280 = load i32, i32* %279, align 8
  %281 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %282 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %281, i32 0, i32 16
  %283 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %282, i32 0, i32 13
  store i32 %280, i32* %283, align 8
  %284 = load %struct.gl_enable_attrib*, %struct.gl_enable_attrib** %5, align 8
  %285 = getelementptr inbounds %struct.gl_enable_attrib, %struct.gl_enable_attrib* %284, i32 0, i32 13
  %286 = load i32, i32* %285, align 4
  %287 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %288 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %287, i32 0, i32 16
  %289 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %288, i32 0, i32 12
  store i32 %286, i32* %289, align 4
  %290 = load %struct.gl_enable_attrib*, %struct.gl_enable_attrib** %5, align 8
  %291 = getelementptr inbounds %struct.gl_enable_attrib, %struct.gl_enable_attrib* %290, i32 0, i32 12
  %292 = load i32, i32* %291, align 8
  %293 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %294 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %293, i32 0, i32 16
  %295 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %294, i32 0, i32 11
  store i32 %292, i32* %295, align 8
  %296 = load %struct.gl_enable_attrib*, %struct.gl_enable_attrib** %5, align 8
  %297 = getelementptr inbounds %struct.gl_enable_attrib, %struct.gl_enable_attrib* %296, i32 0, i32 11
  %298 = load i32, i32* %297, align 4
  %299 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %300 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %299, i32 0, i32 16
  %301 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %300, i32 0, i32 10
  store i32 %298, i32* %301, align 4
  %302 = load %struct.gl_enable_attrib*, %struct.gl_enable_attrib** %5, align 8
  %303 = getelementptr inbounds %struct.gl_enable_attrib, %struct.gl_enable_attrib* %302, i32 0, i32 10
  %304 = load i32, i32* %303, align 8
  %305 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %306 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %305, i32 0, i32 4
  %307 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %306, i32 0, i32 9
  store i32 %304, i32* %307, align 8
  %308 = load %struct.gl_enable_attrib*, %struct.gl_enable_attrib** %5, align 8
  %309 = getelementptr inbounds %struct.gl_enable_attrib, %struct.gl_enable_attrib* %308, i32 0, i32 9
  %310 = load i32, i32* %309, align 4
  %311 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %312 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %311, i32 0, i32 9
  %313 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %312, i32 0, i32 5
  store i32 %310, i32* %313, align 8
  %314 = load %struct.gl_enable_attrib*, %struct.gl_enable_attrib** %5, align 8
  %315 = getelementptr inbounds %struct.gl_enable_attrib, %struct.gl_enable_attrib* %314, i32 0, i32 8
  %316 = load i32, i32* %315, align 8
  %317 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %318 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %317, i32 0, i32 8
  %319 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %318, i32 0, i32 8
  store i32 %316, i32* %319, align 4
  %320 = load %struct.gl_enable_attrib*, %struct.gl_enable_attrib** %5, align 8
  %321 = getelementptr inbounds %struct.gl_enable_attrib, %struct.gl_enable_attrib* %320, i32 0, i32 7
  %322 = load i32, i32* %321, align 4
  %323 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %324 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %323, i32 0, i32 8
  %325 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %324, i32 0, i32 7
  store i32 %322, i32* %325, align 8
  %326 = load %struct.gl_enable_attrib*, %struct.gl_enable_attrib** %5, align 8
  %327 = getelementptr inbounds %struct.gl_enable_attrib, %struct.gl_enable_attrib* %326, i32 0, i32 6
  %328 = load i32, i32* %327, align 8
  %329 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %330 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %329, i32 0, i32 8
  %331 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %330, i32 0, i32 6
  store i32 %328, i32* %331, align 4
  %332 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %333 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %332, i32 0, i32 8
  %334 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %333, i32 0, i32 8
  %335 = load i32, i32* %334, align 4
  %336 = icmp ne i32 %335, 0
  br i1 %336, label %349, label %337

337:                                              ; preds = %133
  %338 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %339 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %338, i32 0, i32 8
  %340 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %339, i32 0, i32 7
  %341 = load i32, i32* %340, align 8
  %342 = icmp ne i32 %341, 0
  br i1 %342, label %349, label %343

343:                                              ; preds = %337
  %344 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %345 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %344, i32 0, i32 8
  %346 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %345, i32 0, i32 6
  %347 = load i32, i32* %346, align 4
  %348 = icmp ne i32 %347, 0
  br label %349

349:                                              ; preds = %343, %337, %133
  %350 = phi i1 [ true, %337 ], [ true, %133 ], [ %348, %343 ]
  %351 = zext i1 %350 to i32
  %352 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %353 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %352, i32 0, i32 8
  %354 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %353, i32 0, i32 1
  store i32 %351, i32* %354, align 8
  %355 = load %struct.gl_enable_attrib*, %struct.gl_enable_attrib** %5, align 8
  %356 = getelementptr inbounds %struct.gl_enable_attrib, %struct.gl_enable_attrib* %355, i32 0, i32 5
  %357 = load i32, i32* %356, align 4
  %358 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %359 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %358, i32 0, i32 8
  %360 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %359, i32 0, i32 5
  store i32 %357, i32* %360, align 8
  %361 = load %struct.gl_enable_attrib*, %struct.gl_enable_attrib** %5, align 8
  %362 = getelementptr inbounds %struct.gl_enable_attrib, %struct.gl_enable_attrib* %361, i32 0, i32 4
  %363 = load i32, i32* %362, align 8
  %364 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %365 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %364, i32 0, i32 8
  %366 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %365, i32 0, i32 4
  store i32 %363, i32* %366, align 4
  %367 = load %struct.gl_enable_attrib*, %struct.gl_enable_attrib** %5, align 8
  %368 = getelementptr inbounds %struct.gl_enable_attrib, %struct.gl_enable_attrib* %367, i32 0, i32 3
  %369 = load i32, i32* %368, align 4
  %370 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %371 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %370, i32 0, i32 6
  %372 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %371, i32 0, i32 3
  store i32 %369, i32* %372, align 8
  %373 = load %struct.gl_enable_attrib*, %struct.gl_enable_attrib** %5, align 8
  %374 = getelementptr inbounds %struct.gl_enable_attrib, %struct.gl_enable_attrib* %373, i32 0, i32 2
  %375 = load i32, i32* %374, align 8
  %376 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %377 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %376, i32 0, i32 5
  %378 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %377, i32 0, i32 3
  store i32 %375, i32* %378, align 8
  %379 = load %struct.gl_enable_attrib*, %struct.gl_enable_attrib** %5, align 8
  %380 = getelementptr inbounds %struct.gl_enable_attrib, %struct.gl_enable_attrib* %379, i32 0, i32 1
  %381 = load i32, i32* %380, align 4
  %382 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %383 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %382, i32 0, i32 3
  %384 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %383, i32 0, i32 3
  store i32 %381, i32* %384, align 8
  %385 = load %struct.gl_enable_attrib*, %struct.gl_enable_attrib** %5, align 8
  %386 = getelementptr inbounds %struct.gl_enable_attrib, %struct.gl_enable_attrib* %385, i32 0, i32 0
  %387 = load i32, i32* %386, align 8
  %388 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %389 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %388, i32 0, i32 3
  %390 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %389, i32 0, i32 2
  store i32 %387, i32* %390, align 4
  br label %500

391:                                              ; preds = %40
  %392 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %393 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %392, i32 0, i32 16
  %394 = load %struct.gl_attrib_node*, %struct.gl_attrib_node** %3, align 8
  %395 = getelementptr inbounds %struct.gl_attrib_node, %struct.gl_attrib_node* %394, i32 0, i32 1
  %396 = load i64, i64* %395, align 8
  %397 = call i32 @MEMCPY(%struct.TYPE_9__* %393, i64 %396, i32 4)
  br label %500

398:                                              ; preds = %40
  %399 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %400 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %399, i32 0, i32 15
  %401 = load %struct.gl_attrib_node*, %struct.gl_attrib_node** %3, align 8
  %402 = getelementptr inbounds %struct.gl_attrib_node, %struct.gl_attrib_node* %401, i32 0, i32 1
  %403 = load i64, i64* %402, align 8
  %404 = call i32 @MEMCPY(%struct.TYPE_9__* %400, i64 %403, i32 4)
  br label %500

405:                                              ; preds = %40
  %406 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %407 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %406, i32 0, i32 14
  %408 = load %struct.gl_attrib_node*, %struct.gl_attrib_node** %3, align 8
  %409 = getelementptr inbounds %struct.gl_attrib_node, %struct.gl_attrib_node* %408, i32 0, i32 1
  %410 = load i64, i64* %409, align 8
  %411 = call i32 @MEMCPY(%struct.TYPE_9__* %407, i64 %410, i32 4)
  br label %500

412:                                              ; preds = %40
  %413 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %414 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %413, i32 0, i32 13
  %415 = load %struct.gl_attrib_node*, %struct.gl_attrib_node** %3, align 8
  %416 = getelementptr inbounds %struct.gl_attrib_node, %struct.gl_attrib_node* %415, i32 0, i32 1
  %417 = load i64, i64* %416, align 8
  %418 = call i32 @MEMCPY(%struct.TYPE_9__* %414, i64 %417, i32 4)
  br label %500

419:                                              ; preds = %40
  %420 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %421 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %420, i32 0, i32 12
  %422 = load %struct.gl_attrib_node*, %struct.gl_attrib_node** %3, align 8
  %423 = getelementptr inbounds %struct.gl_attrib_node, %struct.gl_attrib_node* %422, i32 0, i32 1
  %424 = load i64, i64* %423, align 8
  %425 = call i32 @MEMCPY(%struct.TYPE_9__* %421, i64 %424, i32 4)
  br label %500

426:                                              ; preds = %40
  %427 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %428 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %427, i32 0, i32 11
  %429 = load %struct.gl_attrib_node*, %struct.gl_attrib_node** %3, align 8
  %430 = getelementptr inbounds %struct.gl_attrib_node, %struct.gl_attrib_node* %429, i32 0, i32 1
  %431 = load i64, i64* %430, align 8
  %432 = call i32 @MEMCPY(%struct.TYPE_9__* %428, i64 %431, i32 4)
  br label %500

433:                                              ; preds = %40
  %434 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %435 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %434, i32 0, i32 10
  %436 = load %struct.gl_attrib_node*, %struct.gl_attrib_node** %3, align 8
  %437 = getelementptr inbounds %struct.gl_attrib_node, %struct.gl_attrib_node* %436, i32 0, i32 1
  %438 = load i64, i64* %437, align 8
  %439 = call i32 @MEMCPY(%struct.TYPE_9__* %435, i64 %438, i32 4)
  br label %500

440:                                              ; preds = %40
  %441 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %442 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %441, i32 0, i32 9
  %443 = load %struct.gl_attrib_node*, %struct.gl_attrib_node** %3, align 8
  %444 = getelementptr inbounds %struct.gl_attrib_node, %struct.gl_attrib_node* %443, i32 0, i32 1
  %445 = load i64, i64* %444, align 8
  %446 = call i32 @MEMCPY(%struct.TYPE_9__* %442, i64 %445, i32 4)
  br label %500

447:                                              ; preds = %40
  %448 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %449 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %448, i32 0, i32 8
  %450 = load %struct.gl_attrib_node*, %struct.gl_attrib_node** %3, align 8
  %451 = getelementptr inbounds %struct.gl_attrib_node, %struct.gl_attrib_node* %450, i32 0, i32 1
  %452 = load i64, i64* %451, align 8
  %453 = call i32 @MEMCPY(%struct.TYPE_9__* %449, i64 %452, i32 4)
  br label %500

454:                                              ; preds = %40
  %455 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %456 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %455, i32 0, i32 7
  %457 = load %struct.TYPE_9__*, %struct.TYPE_9__** %456, align 8
  %458 = load %struct.gl_attrib_node*, %struct.gl_attrib_node** %3, align 8
  %459 = getelementptr inbounds %struct.gl_attrib_node, %struct.gl_attrib_node* %458, i32 0, i32 1
  %460 = load i64, i64* %459, align 8
  %461 = call i32 @MEMCPY(%struct.TYPE_9__* %457, i64 %460, i32 256)
  br label %500

462:                                              ; preds = %40
  %463 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %464 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %463, i32 0, i32 6
  %465 = load %struct.gl_attrib_node*, %struct.gl_attrib_node** %3, align 8
  %466 = getelementptr inbounds %struct.gl_attrib_node, %struct.gl_attrib_node* %465, i32 0, i32 1
  %467 = load i64, i64* %466, align 8
  %468 = call i32 @MEMCPY(%struct.TYPE_9__* %464, i64 %467, i32 4)
  br label %500

469:                                              ; preds = %40
  %470 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %471 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %470, i32 0, i32 5
  %472 = load %struct.gl_attrib_node*, %struct.gl_attrib_node** %3, align 8
  %473 = getelementptr inbounds %struct.gl_attrib_node, %struct.gl_attrib_node* %472, i32 0, i32 1
  %474 = load i64, i64* %473, align 8
  %475 = call i32 @MEMCPY(%struct.TYPE_9__* %471, i64 %474, i32 4)
  br label %500

476:                                              ; preds = %40
  %477 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %478 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %477, i32 0, i32 4
  %479 = load %struct.gl_attrib_node*, %struct.gl_attrib_node** %3, align 8
  %480 = getelementptr inbounds %struct.gl_attrib_node, %struct.gl_attrib_node* %479, i32 0, i32 1
  %481 = load i64, i64* %480, align 8
  %482 = call i32 @MEMCPY(%struct.TYPE_9__* %478, i64 %481, i32 4)
  br label %500

483:                                              ; preds = %40
  %484 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %485 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %484, i32 0, i32 3
  %486 = load %struct.gl_attrib_node*, %struct.gl_attrib_node** %3, align 8
  %487 = getelementptr inbounds %struct.gl_attrib_node, %struct.gl_attrib_node* %486, i32 0, i32 1
  %488 = load i64, i64* %487, align 8
  %489 = call i32 @MEMCPY(%struct.TYPE_9__* %485, i64 %488, i32 4)
  br label %500

490:                                              ; preds = %40
  %491 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %492 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %491, i32 0, i32 2
  %493 = load %struct.gl_attrib_node*, %struct.gl_attrib_node** %3, align 8
  %494 = getelementptr inbounds %struct.gl_attrib_node, %struct.gl_attrib_node* %493, i32 0, i32 1
  %495 = load i64, i64* %494, align 8
  %496 = call i32 @MEMCPY(%struct.TYPE_9__* %492, i64 %495, i32 4)
  br label %500

497:                                              ; preds = %40
  %498 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %499 = call i32 @gl_problem(%struct.TYPE_8__* %498, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  br label %500

500:                                              ; preds = %497, %490, %483, %476, %469, %462, %454, %447, %440, %433, %426, %419, %412, %405, %398, %391, %349, %83, %76, %75, %44
  %501 = load %struct.gl_attrib_node*, %struct.gl_attrib_node** %3, align 8
  %502 = getelementptr inbounds %struct.gl_attrib_node, %struct.gl_attrib_node* %501, i32 0, i32 2
  %503 = load %struct.gl_attrib_node*, %struct.gl_attrib_node** %502, align 8
  store %struct.gl_attrib_node* %503, %struct.gl_attrib_node** %4, align 8
  %504 = load %struct.gl_attrib_node*, %struct.gl_attrib_node** %3, align 8
  %505 = getelementptr inbounds %struct.gl_attrib_node, %struct.gl_attrib_node* %504, i32 0, i32 1
  %506 = load i64, i64* %505, align 8
  %507 = inttoptr i64 %506 to i8*
  %508 = call i32 @free(i8* %507)
  %509 = load %struct.gl_attrib_node*, %struct.gl_attrib_node** %3, align 8
  %510 = bitcast %struct.gl_attrib_node* %509 to i8*
  %511 = call i32 @free(i8* %510)
  %512 = load %struct.gl_attrib_node*, %struct.gl_attrib_node** %4, align 8
  store %struct.gl_attrib_node* %512, %struct.gl_attrib_node** %3, align 8
  br label %37

513:                                              ; preds = %37
  %514 = load i32, i32* @NEW_ALL, align 4
  %515 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %516 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %515, i32 0, i32 1
  store i32 %514, i32* %516, align 8
  br label %517

517:                                              ; preds = %513, %20, %11
  ret void
}

declare dso_local i64 @INSIDE_BEGIN_END(%struct.TYPE_8__*) #1

declare dso_local i32 @gl_error(%struct.TYPE_8__*, i32, i8*) #1

declare dso_local i32 @MEMCPY(%struct.TYPE_9__*, i64, i32) #1

declare dso_local i32 @gl_DrawBuffer(%struct.TYPE_8__*, i64) #1

declare dso_local i32 @gl_problem(%struct.TYPE_8__*, i8*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
