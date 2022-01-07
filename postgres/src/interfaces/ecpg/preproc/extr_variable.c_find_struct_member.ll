; ModuleID = '/home/carl/AnghaBench/postgres/src/interfaces/ecpg/preproc/extr_variable.c_find_struct_member.c'
source_filename = "/home/carl/AnghaBench/postgres/src/interfaces/ecpg/preproc/extr_variable.c_find_struct_member.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.variable = type { i32 }
%struct.ECPGstruct_member = type { %struct.TYPE_10__*, i32, %struct.ECPGstruct_member* }
%struct.TYPE_10__ = type { i32, %struct.TYPE_9__, i32, i32, i32, i32 }
%struct.TYPE_9__ = type { %struct.ECPGstruct_member*, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32, %struct.TYPE_7__, i32, i32, i32, i32 }
%struct.TYPE_7__ = type { %struct.ECPGstruct_member*, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32, i32, i32 }

@.str = private unnamed_addr constant [4 x i8] c".-[\00", align 1
@PARSE_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"incorrectly formed variable \22%s\22\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.variable* (i8*, i8*, %struct.ECPGstruct_member*, i32)* @find_struct_member to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.variable* @find_struct_member(i8* %0, i8* %1, %struct.ECPGstruct_member* %2, i32 %3) #0 {
  %5 = alloca %struct.variable*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.ECPGstruct_member*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8, align 1
  %13 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i8* %1, i8** %7, align 8
  store %struct.ECPGstruct_member* %2, %struct.ECPGstruct_member** %8, align 8
  store i32 %3, i32* %9, align 4
  %14 = load i8*, i8** %7, align 8
  %15 = getelementptr inbounds i8, i8* %14, i32 1
  store i8* %15, i8** %7, align 8
  %16 = call i8* @strpbrk(i8* %15, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  store i8* %16, i8** %10, align 8
  store i8 0, i8* %12, align 1
  %17 = load i8*, i8** %10, align 8
  %18 = icmp ne i8* %17, null
  br i1 %18, label %19, label %23

19:                                               ; preds = %4
  %20 = load i8*, i8** %10, align 8
  %21 = load i8, i8* %20, align 1
  store i8 %21, i8* %12, align 1
  %22 = load i8*, i8** %10, align 8
  store i8 0, i8* %22, align 1
  br label %23

23:                                               ; preds = %19, %4
  br label %24

24:                                               ; preds = %365, %23
  %25 = load %struct.ECPGstruct_member*, %struct.ECPGstruct_member** %8, align 8
  %26 = icmp ne %struct.ECPGstruct_member* %25, null
  br i1 %26, label %27, label %369

27:                                               ; preds = %24
  %28 = load %struct.ECPGstruct_member*, %struct.ECPGstruct_member** %8, align 8
  %29 = getelementptr inbounds %struct.ECPGstruct_member, %struct.ECPGstruct_member* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = load i8*, i8** %7, align 8
  %32 = call i64 @strcmp(i32 %30, i8* %31)
  %33 = icmp eq i64 %32, 0
  br i1 %33, label %34, label %364

34:                                               ; preds = %27
  %35 = load i8*, i8** %10, align 8
  %36 = icmp eq i8* %35, null
  br i1 %36, label %37, label %124

37:                                               ; preds = %34
  %38 = load %struct.ECPGstruct_member*, %struct.ECPGstruct_member** %8, align 8
  %39 = getelementptr inbounds %struct.ECPGstruct_member, %struct.ECPGstruct_member* %38, i32 0, i32 0
  %40 = load %struct.TYPE_10__*, %struct.TYPE_10__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  switch i32 %42, label %104 [
    i32 130, label %43
    i32 129, label %78
    i32 128, label %78
  ]

43:                                               ; preds = %37
  %44 = load i8*, i8** %6, align 8
  %45 = load %struct.ECPGstruct_member*, %struct.ECPGstruct_member** %8, align 8
  %46 = getelementptr inbounds %struct.ECPGstruct_member, %struct.ECPGstruct_member* %45, i32 0, i32 0
  %47 = load %struct.TYPE_10__*, %struct.TYPE_10__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %48, i32 0, i32 1
  %50 = load %struct.TYPE_8__*, %struct.TYPE_8__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = load %struct.ECPGstruct_member*, %struct.ECPGstruct_member** %8, align 8
  %54 = getelementptr inbounds %struct.ECPGstruct_member, %struct.ECPGstruct_member* %53, i32 0, i32 0
  %55 = load %struct.TYPE_10__*, %struct.TYPE_10__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %56, i32 0, i32 1
  %58 = load %struct.TYPE_8__*, %struct.TYPE_8__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %58, i32 0, i32 3
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.ECPGstruct_member*, %struct.ECPGstruct_member** %8, align 8
  %62 = getelementptr inbounds %struct.ECPGstruct_member, %struct.ECPGstruct_member* %61, i32 0, i32 0
  %63 = load %struct.TYPE_10__*, %struct.TYPE_10__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %63, i32 0, i32 1
  %65 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %64, i32 0, i32 1
  %66 = load %struct.TYPE_8__*, %struct.TYPE_8__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 8
  %69 = call i32 @ECPGmake_simple_type(i32 %52, i32 %60, i32 %68)
  %70 = load %struct.ECPGstruct_member*, %struct.ECPGstruct_member** %8, align 8
  %71 = getelementptr inbounds %struct.ECPGstruct_member, %struct.ECPGstruct_member* %70, i32 0, i32 0
  %72 = load %struct.TYPE_10__*, %struct.TYPE_10__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %72, i32 0, i32 3
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @ECPGmake_array_type(i32 %69, i32 %74)
  %76 = load i32, i32* %9, align 4
  %77 = call %struct.variable* @new_variable(i8* %44, i32 %75, i32 %76)
  store %struct.variable* %77, %struct.variable** %5, align 8
  br label %370

78:                                               ; preds = %37, %37
  %79 = load i8*, i8** %6, align 8
  %80 = load %struct.ECPGstruct_member*, %struct.ECPGstruct_member** %8, align 8
  %81 = getelementptr inbounds %struct.ECPGstruct_member, %struct.ECPGstruct_member* %80, i32 0, i32 0
  %82 = load %struct.TYPE_10__*, %struct.TYPE_10__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %82, i32 0, i32 1
  %84 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %83, i32 0, i32 0
  %85 = load %struct.ECPGstruct_member*, %struct.ECPGstruct_member** %84, align 8
  %86 = load %struct.ECPGstruct_member*, %struct.ECPGstruct_member** %8, align 8
  %87 = getelementptr inbounds %struct.ECPGstruct_member, %struct.ECPGstruct_member* %86, i32 0, i32 0
  %88 = load %struct.TYPE_10__*, %struct.TYPE_10__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = load %struct.ECPGstruct_member*, %struct.ECPGstruct_member** %8, align 8
  %92 = getelementptr inbounds %struct.ECPGstruct_member, %struct.ECPGstruct_member* %91, i32 0, i32 0
  %93 = load %struct.TYPE_10__*, %struct.TYPE_10__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %93, i32 0, i32 5
  %95 = load i32, i32* %94, align 4
  %96 = load %struct.ECPGstruct_member*, %struct.ECPGstruct_member** %8, align 8
  %97 = getelementptr inbounds %struct.ECPGstruct_member, %struct.ECPGstruct_member* %96, i32 0, i32 0
  %98 = load %struct.TYPE_10__*, %struct.TYPE_10__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %98, i32 0, i32 4
  %100 = load i32, i32* %99, align 8
  %101 = call i32 @ECPGmake_struct_type(%struct.ECPGstruct_member* %85, i32 %90, i32 %95, i32 %100)
  %102 = load i32, i32* %9, align 4
  %103 = call %struct.variable* @new_variable(i8* %79, i32 %101, i32 %102)
  store %struct.variable* %103, %struct.variable** %5, align 8
  br label %370

104:                                              ; preds = %37
  %105 = load i8*, i8** %6, align 8
  %106 = load %struct.ECPGstruct_member*, %struct.ECPGstruct_member** %8, align 8
  %107 = getelementptr inbounds %struct.ECPGstruct_member, %struct.ECPGstruct_member* %106, i32 0, i32 0
  %108 = load %struct.TYPE_10__*, %struct.TYPE_10__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = load %struct.ECPGstruct_member*, %struct.ECPGstruct_member** %8, align 8
  %112 = getelementptr inbounds %struct.ECPGstruct_member, %struct.ECPGstruct_member* %111, i32 0, i32 0
  %113 = load %struct.TYPE_10__*, %struct.TYPE_10__** %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %113, i32 0, i32 3
  %115 = load i32, i32* %114, align 4
  %116 = load %struct.ECPGstruct_member*, %struct.ECPGstruct_member** %8, align 8
  %117 = getelementptr inbounds %struct.ECPGstruct_member, %struct.ECPGstruct_member* %116, i32 0, i32 0
  %118 = load %struct.TYPE_10__*, %struct.TYPE_10__** %117, align 8
  %119 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %118, i32 0, i32 2
  %120 = load i32, i32* %119, align 8
  %121 = call i32 @ECPGmake_simple_type(i32 %110, i32 %115, i32 %120)
  %122 = load i32, i32* %9, align 4
  %123 = call %struct.variable* @new_variable(i8* %105, i32 %121, i32 %122)
  store %struct.variable* %123, %struct.variable** %5, align 8
  br label %370

124:                                              ; preds = %34
  %125 = load i8, i8* %12, align 1
  %126 = load i8*, i8** %10, align 8
  store i8 %125, i8* %126, align 1
  %127 = load i8, i8* %12, align 1
  %128 = sext i8 %127 to i32
  %129 = icmp eq i32 %128, 91
  br i1 %129, label %130, label %152

130:                                              ; preds = %124
  store i32 1, i32* %13, align 4
  %131 = load i8*, i8** %10, align 8
  %132 = getelementptr inbounds i8, i8* %131, i64 1
  store i8* %132, i8** %11, align 8
  br label %133

133:                                              ; preds = %148, %130
  %134 = load i32, i32* %13, align 4
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %151

136:                                              ; preds = %133
  %137 = load i8*, i8** %11, align 8
  %138 = load i8, i8* %137, align 1
  %139 = sext i8 %138 to i32
  switch i32 %139, label %146 [
    i32 91, label %140
    i32 93, label %143
  ]

140:                                              ; preds = %136
  %141 = load i32, i32* %13, align 4
  %142 = add nsw i32 %141, 1
  store i32 %142, i32* %13, align 4
  br label %147

143:                                              ; preds = %136
  %144 = load i32, i32* %13, align 4
  %145 = add nsw i32 %144, -1
  store i32 %145, i32* %13, align 4
  br label %147

146:                                              ; preds = %136
  br label %147

147:                                              ; preds = %146, %143, %140
  br label %148

148:                                              ; preds = %147
  %149 = load i8*, i8** %11, align 8
  %150 = getelementptr inbounds i8, i8* %149, i32 1
  store i8* %150, i8** %11, align 8
  br label %133

151:                                              ; preds = %133
  br label %154

152:                                              ; preds = %124
  %153 = load i8*, i8** %10, align 8
  store i8* %153, i8** %11, align 8
  br label %154

154:                                              ; preds = %152, %151
  %155 = load i8*, i8** %11, align 8
  %156 = load i8, i8* %155, align 1
  %157 = sext i8 %156 to i32
  switch i32 %157, label %358 [
    i32 0, label %158
    i32 45, label %292
    i32 46, label %326
  ]

158:                                              ; preds = %154
  %159 = load %struct.ECPGstruct_member*, %struct.ECPGstruct_member** %8, align 8
  %160 = getelementptr inbounds %struct.ECPGstruct_member, %struct.ECPGstruct_member* %159, i32 0, i32 0
  %161 = load %struct.TYPE_10__*, %struct.TYPE_10__** %160, align 8
  %162 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %161, i32 0, i32 0
  %163 = load i32, i32* %162, align 8
  %164 = icmp ne i32 %163, 130
  br i1 %164, label %165, label %169

165:                                              ; preds = %158
  %166 = load i32, i32* @PARSE_ERROR, align 4
  %167 = load i8*, i8** %6, align 8
  %168 = call i32 @mmfatal(i32 %166, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i8* %167)
  br label %169

169:                                              ; preds = %165, %158
  %170 = load %struct.ECPGstruct_member*, %struct.ECPGstruct_member** %8, align 8
  %171 = getelementptr inbounds %struct.ECPGstruct_member, %struct.ECPGstruct_member* %170, i32 0, i32 0
  %172 = load %struct.TYPE_10__*, %struct.TYPE_10__** %171, align 8
  %173 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %172, i32 0, i32 1
  %174 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %173, i32 0, i32 1
  %175 = load %struct.TYPE_8__*, %struct.TYPE_8__** %174, align 8
  %176 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %175, i32 0, i32 0
  %177 = load i32, i32* %176, align 8
  switch i32 %177, label %263 [
    i32 130, label %178
    i32 129, label %225
    i32 128, label %225
  ]

178:                                              ; preds = %169
  %179 = load i8*, i8** %6, align 8
  %180 = load %struct.ECPGstruct_member*, %struct.ECPGstruct_member** %8, align 8
  %181 = getelementptr inbounds %struct.ECPGstruct_member, %struct.ECPGstruct_member* %180, i32 0, i32 0
  %182 = load %struct.TYPE_10__*, %struct.TYPE_10__** %181, align 8
  %183 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %182, i32 0, i32 1
  %184 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %183, i32 0, i32 1
  %185 = load %struct.TYPE_8__*, %struct.TYPE_8__** %184, align 8
  %186 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %185, i32 0, i32 1
  %187 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %186, i32 0, i32 1
  %188 = load %struct.TYPE_6__*, %struct.TYPE_6__** %187, align 8
  %189 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %188, i32 0, i32 0
  %190 = load i32, i32* %189, align 4
  %191 = load %struct.ECPGstruct_member*, %struct.ECPGstruct_member** %8, align 8
  %192 = getelementptr inbounds %struct.ECPGstruct_member, %struct.ECPGstruct_member* %191, i32 0, i32 0
  %193 = load %struct.TYPE_10__*, %struct.TYPE_10__** %192, align 8
  %194 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %193, i32 0, i32 1
  %195 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %194, i32 0, i32 1
  %196 = load %struct.TYPE_8__*, %struct.TYPE_8__** %195, align 8
  %197 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %196, i32 0, i32 1
  %198 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %197, i32 0, i32 1
  %199 = load %struct.TYPE_6__*, %struct.TYPE_6__** %198, align 8
  %200 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %199, i32 0, i32 2
  %201 = load i32, i32* %200, align 4
  %202 = load %struct.ECPGstruct_member*, %struct.ECPGstruct_member** %8, align 8
  %203 = getelementptr inbounds %struct.ECPGstruct_member, %struct.ECPGstruct_member* %202, i32 0, i32 0
  %204 = load %struct.TYPE_10__*, %struct.TYPE_10__** %203, align 8
  %205 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %204, i32 0, i32 1
  %206 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %205, i32 0, i32 1
  %207 = load %struct.TYPE_8__*, %struct.TYPE_8__** %206, align 8
  %208 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %207, i32 0, i32 1
  %209 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %208, i32 0, i32 1
  %210 = load %struct.TYPE_6__*, %struct.TYPE_6__** %209, align 8
  %211 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %210, i32 0, i32 1
  %212 = load i32, i32* %211, align 4
  %213 = call i32 @ECPGmake_simple_type(i32 %190, i32 %201, i32 %212)
  %214 = load %struct.ECPGstruct_member*, %struct.ECPGstruct_member** %8, align 8
  %215 = getelementptr inbounds %struct.ECPGstruct_member, %struct.ECPGstruct_member* %214, i32 0, i32 0
  %216 = load %struct.TYPE_10__*, %struct.TYPE_10__** %215, align 8
  %217 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %216, i32 0, i32 1
  %218 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %217, i32 0, i32 1
  %219 = load %struct.TYPE_8__*, %struct.TYPE_8__** %218, align 8
  %220 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %219, i32 0, i32 3
  %221 = load i32, i32* %220, align 4
  %222 = call i32 @ECPGmake_array_type(i32 %213, i32 %221)
  %223 = load i32, i32* %9, align 4
  %224 = call %struct.variable* @new_variable(i8* %179, i32 %222, i32 %223)
  store %struct.variable* %224, %struct.variable** %5, align 8
  br label %370

225:                                              ; preds = %169, %169
  %226 = load i8*, i8** %6, align 8
  %227 = load %struct.ECPGstruct_member*, %struct.ECPGstruct_member** %8, align 8
  %228 = getelementptr inbounds %struct.ECPGstruct_member, %struct.ECPGstruct_member* %227, i32 0, i32 0
  %229 = load %struct.TYPE_10__*, %struct.TYPE_10__** %228, align 8
  %230 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %229, i32 0, i32 1
  %231 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %230, i32 0, i32 1
  %232 = load %struct.TYPE_8__*, %struct.TYPE_8__** %231, align 8
  %233 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %232, i32 0, i32 1
  %234 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %233, i32 0, i32 0
  %235 = load %struct.ECPGstruct_member*, %struct.ECPGstruct_member** %234, align 8
  %236 = load %struct.ECPGstruct_member*, %struct.ECPGstruct_member** %8, align 8
  %237 = getelementptr inbounds %struct.ECPGstruct_member, %struct.ECPGstruct_member* %236, i32 0, i32 0
  %238 = load %struct.TYPE_10__*, %struct.TYPE_10__** %237, align 8
  %239 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %238, i32 0, i32 1
  %240 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %239, i32 0, i32 1
  %241 = load %struct.TYPE_8__*, %struct.TYPE_8__** %240, align 8
  %242 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %241, i32 0, i32 0
  %243 = load i32, i32* %242, align 8
  %244 = load %struct.ECPGstruct_member*, %struct.ECPGstruct_member** %8, align 8
  %245 = getelementptr inbounds %struct.ECPGstruct_member, %struct.ECPGstruct_member* %244, i32 0, i32 0
  %246 = load %struct.TYPE_10__*, %struct.TYPE_10__** %245, align 8
  %247 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %246, i32 0, i32 1
  %248 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %247, i32 0, i32 1
  %249 = load %struct.TYPE_8__*, %struct.TYPE_8__** %248, align 8
  %250 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %249, i32 0, i32 5
  %251 = load i32, i32* %250, align 4
  %252 = load %struct.ECPGstruct_member*, %struct.ECPGstruct_member** %8, align 8
  %253 = getelementptr inbounds %struct.ECPGstruct_member, %struct.ECPGstruct_member* %252, i32 0, i32 0
  %254 = load %struct.TYPE_10__*, %struct.TYPE_10__** %253, align 8
  %255 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %254, i32 0, i32 1
  %256 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %255, i32 0, i32 1
  %257 = load %struct.TYPE_8__*, %struct.TYPE_8__** %256, align 8
  %258 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %257, i32 0, i32 4
  %259 = load i32, i32* %258, align 8
  %260 = call i32 @ECPGmake_struct_type(%struct.ECPGstruct_member* %235, i32 %243, i32 %251, i32 %259)
  %261 = load i32, i32* %9, align 4
  %262 = call %struct.variable* @new_variable(i8* %226, i32 %260, i32 %261)
  store %struct.variable* %262, %struct.variable** %5, align 8
  br label %370

263:                                              ; preds = %169
  %264 = load i8*, i8** %6, align 8
  %265 = load %struct.ECPGstruct_member*, %struct.ECPGstruct_member** %8, align 8
  %266 = getelementptr inbounds %struct.ECPGstruct_member, %struct.ECPGstruct_member* %265, i32 0, i32 0
  %267 = load %struct.TYPE_10__*, %struct.TYPE_10__** %266, align 8
  %268 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %267, i32 0, i32 1
  %269 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %268, i32 0, i32 1
  %270 = load %struct.TYPE_8__*, %struct.TYPE_8__** %269, align 8
  %271 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %270, i32 0, i32 0
  %272 = load i32, i32* %271, align 8
  %273 = load %struct.ECPGstruct_member*, %struct.ECPGstruct_member** %8, align 8
  %274 = getelementptr inbounds %struct.ECPGstruct_member, %struct.ECPGstruct_member* %273, i32 0, i32 0
  %275 = load %struct.TYPE_10__*, %struct.TYPE_10__** %274, align 8
  %276 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %275, i32 0, i32 1
  %277 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %276, i32 0, i32 1
  %278 = load %struct.TYPE_8__*, %struct.TYPE_8__** %277, align 8
  %279 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %278, i32 0, i32 3
  %280 = load i32, i32* %279, align 4
  %281 = load %struct.ECPGstruct_member*, %struct.ECPGstruct_member** %8, align 8
  %282 = getelementptr inbounds %struct.ECPGstruct_member, %struct.ECPGstruct_member* %281, i32 0, i32 0
  %283 = load %struct.TYPE_10__*, %struct.TYPE_10__** %282, align 8
  %284 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %283, i32 0, i32 1
  %285 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %284, i32 0, i32 1
  %286 = load %struct.TYPE_8__*, %struct.TYPE_8__** %285, align 8
  %287 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %286, i32 0, i32 2
  %288 = load i32, i32* %287, align 8
  %289 = call i32 @ECPGmake_simple_type(i32 %272, i32 %280, i32 %288)
  %290 = load i32, i32* %9, align 4
  %291 = call %struct.variable* @new_variable(i8* %264, i32 %289, i32 %290)
  store %struct.variable* %291, %struct.variable** %5, align 8
  br label %370

292:                                              ; preds = %154
  %293 = load %struct.ECPGstruct_member*, %struct.ECPGstruct_member** %8, align 8
  %294 = getelementptr inbounds %struct.ECPGstruct_member, %struct.ECPGstruct_member* %293, i32 0, i32 0
  %295 = load %struct.TYPE_10__*, %struct.TYPE_10__** %294, align 8
  %296 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %295, i32 0, i32 0
  %297 = load i32, i32* %296, align 8
  %298 = icmp eq i32 %297, 130
  br i1 %298, label %299, label %314

299:                                              ; preds = %292
  %300 = load i8*, i8** %6, align 8
  %301 = load i8*, i8** %11, align 8
  %302 = getelementptr inbounds i8, i8* %301, i32 1
  store i8* %302, i8** %11, align 8
  %303 = load %struct.ECPGstruct_member*, %struct.ECPGstruct_member** %8, align 8
  %304 = getelementptr inbounds %struct.ECPGstruct_member, %struct.ECPGstruct_member* %303, i32 0, i32 0
  %305 = load %struct.TYPE_10__*, %struct.TYPE_10__** %304, align 8
  %306 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %305, i32 0, i32 1
  %307 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %306, i32 0, i32 1
  %308 = load %struct.TYPE_8__*, %struct.TYPE_8__** %307, align 8
  %309 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %308, i32 0, i32 1
  %310 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %309, i32 0, i32 0
  %311 = load %struct.ECPGstruct_member*, %struct.ECPGstruct_member** %310, align 8
  %312 = load i32, i32* %9, align 4
  %313 = call %struct.variable* @find_struct_member(i8* %300, i8* %302, %struct.ECPGstruct_member* %311, i32 %312)
  store %struct.variable* %313, %struct.variable** %5, align 8
  br label %370

314:                                              ; preds = %292
  %315 = load i8*, i8** %6, align 8
  %316 = load i8*, i8** %11, align 8
  %317 = getelementptr inbounds i8, i8* %316, i32 1
  store i8* %317, i8** %11, align 8
  %318 = load %struct.ECPGstruct_member*, %struct.ECPGstruct_member** %8, align 8
  %319 = getelementptr inbounds %struct.ECPGstruct_member, %struct.ECPGstruct_member* %318, i32 0, i32 0
  %320 = load %struct.TYPE_10__*, %struct.TYPE_10__** %319, align 8
  %321 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %320, i32 0, i32 1
  %322 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %321, i32 0, i32 0
  %323 = load %struct.ECPGstruct_member*, %struct.ECPGstruct_member** %322, align 8
  %324 = load i32, i32* %9, align 4
  %325 = call %struct.variable* @find_struct_member(i8* %315, i8* %317, %struct.ECPGstruct_member* %323, i32 %324)
  store %struct.variable* %325, %struct.variable** %5, align 8
  br label %370

326:                                              ; preds = %154
  %327 = load %struct.ECPGstruct_member*, %struct.ECPGstruct_member** %8, align 8
  %328 = getelementptr inbounds %struct.ECPGstruct_member, %struct.ECPGstruct_member* %327, i32 0, i32 0
  %329 = load %struct.TYPE_10__*, %struct.TYPE_10__** %328, align 8
  %330 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %329, i32 0, i32 0
  %331 = load i32, i32* %330, align 8
  %332 = icmp eq i32 %331, 130
  br i1 %332, label %333, label %347

333:                                              ; preds = %326
  %334 = load i8*, i8** %6, align 8
  %335 = load i8*, i8** %11, align 8
  %336 = load %struct.ECPGstruct_member*, %struct.ECPGstruct_member** %8, align 8
  %337 = getelementptr inbounds %struct.ECPGstruct_member, %struct.ECPGstruct_member* %336, i32 0, i32 0
  %338 = load %struct.TYPE_10__*, %struct.TYPE_10__** %337, align 8
  %339 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %338, i32 0, i32 1
  %340 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %339, i32 0, i32 1
  %341 = load %struct.TYPE_8__*, %struct.TYPE_8__** %340, align 8
  %342 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %341, i32 0, i32 1
  %343 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %342, i32 0, i32 0
  %344 = load %struct.ECPGstruct_member*, %struct.ECPGstruct_member** %343, align 8
  %345 = load i32, i32* %9, align 4
  %346 = call %struct.variable* @find_struct_member(i8* %334, i8* %335, %struct.ECPGstruct_member* %344, i32 %345)
  store %struct.variable* %346, %struct.variable** %5, align 8
  br label %370

347:                                              ; preds = %326
  %348 = load i8*, i8** %6, align 8
  %349 = load i8*, i8** %11, align 8
  %350 = load %struct.ECPGstruct_member*, %struct.ECPGstruct_member** %8, align 8
  %351 = getelementptr inbounds %struct.ECPGstruct_member, %struct.ECPGstruct_member* %350, i32 0, i32 0
  %352 = load %struct.TYPE_10__*, %struct.TYPE_10__** %351, align 8
  %353 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %352, i32 0, i32 1
  %354 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %353, i32 0, i32 0
  %355 = load %struct.ECPGstruct_member*, %struct.ECPGstruct_member** %354, align 8
  %356 = load i32, i32* %9, align 4
  %357 = call %struct.variable* @find_struct_member(i8* %348, i8* %349, %struct.ECPGstruct_member* %355, i32 %356)
  store %struct.variable* %357, %struct.variable** %5, align 8
  br label %370

358:                                              ; preds = %154
  %359 = load i32, i32* @PARSE_ERROR, align 4
  %360 = load i8*, i8** %6, align 8
  %361 = call i32 @mmfatal(i32 %359, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i8* %360)
  br label %362

362:                                              ; preds = %358
  br label %363

363:                                              ; preds = %362
  br label %364

364:                                              ; preds = %363, %27
  br label %365

365:                                              ; preds = %364
  %366 = load %struct.ECPGstruct_member*, %struct.ECPGstruct_member** %8, align 8
  %367 = getelementptr inbounds %struct.ECPGstruct_member, %struct.ECPGstruct_member* %366, i32 0, i32 2
  %368 = load %struct.ECPGstruct_member*, %struct.ECPGstruct_member** %367, align 8
  store %struct.ECPGstruct_member* %368, %struct.ECPGstruct_member** %8, align 8
  br label %24

369:                                              ; preds = %24
  store %struct.variable* null, %struct.variable** %5, align 8
  br label %370

370:                                              ; preds = %369, %347, %333, %314, %299, %263, %225, %178, %104, %78, %43
  %371 = load %struct.variable*, %struct.variable** %5, align 8
  ret %struct.variable* %371
}

declare dso_local i8* @strpbrk(i8*, i8*) #1

declare dso_local i64 @strcmp(i32, i8*) #1

declare dso_local %struct.variable* @new_variable(i8*, i32, i32) #1

declare dso_local i32 @ECPGmake_array_type(i32, i32) #1

declare dso_local i32 @ECPGmake_simple_type(i32, i32, i32) #1

declare dso_local i32 @ECPGmake_struct_type(%struct.ECPGstruct_member*, i32, i32, i32) #1

declare dso_local i32 @mmfatal(i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
