; ModuleID = '/home/carl/AnghaBench/radare2/shlr/grub/fs/extr_iso9660.c_grub_iso9660_uuid.c'
source_filename = "/home/carl/AnghaBench/radare2/shlr/grub/fs/extr_iso9660.c_grub_iso9660_uuid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }
%struct.grub_iso9660_data = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32*, i32*, i32*, i32*, i32*, i32*, i32* }

@my_mod = common dso_local global i32 0, align 4
@GRUB_ERR_BAD_NUMBER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [48 x i8] c"no creation date in filesystem to generate UUID\00", align 1
@.str.1 = private unnamed_addr constant [39 x i8] c"%c%c%c%c-%c%c-%c%c-%c%c-%c%c-%c%c-%c%c\00", align 1
@grub_errno = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_7__*, i8**)* @grub_iso9660_uuid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @grub_iso9660_uuid(%struct.TYPE_7__* %0, i8** %1) #0 {
  %3 = alloca %struct.TYPE_7__*, align 8
  %4 = alloca i8**, align 8
  %5 = alloca %struct.grub_iso9660_data*, align 8
  %6 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %3, align 8
  store i8** %1, i8*** %4, align 8
  %7 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %8 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  store i32 %9, i32* %6, align 4
  %10 = load i32, i32* @my_mod, align 4
  %11 = call i32 @grub_dl_ref(i32 %10)
  %12 = load i32, i32* %6, align 4
  %13 = call %struct.grub_iso9660_data* @grub_iso9660_mount(i32 %12)
  store %struct.grub_iso9660_data* %13, %struct.grub_iso9660_data** %5, align 8
  %14 = load %struct.grub_iso9660_data*, %struct.grub_iso9660_data** %5, align 8
  %15 = icmp ne %struct.grub_iso9660_data* %14, null
  br i1 %15, label %16, label %280

16:                                               ; preds = %2
  %17 = load %struct.grub_iso9660_data*, %struct.grub_iso9660_data** %5, align 8
  %18 = getelementptr inbounds %struct.grub_iso9660_data, %struct.grub_iso9660_data* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 6
  %21 = load i32*, i32** %20, align 8
  %22 = getelementptr inbounds i32, i32* %21, i64 0
  %23 = load i32, i32* %22, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %164, label %25

25:                                               ; preds = %16
  %26 = load %struct.grub_iso9660_data*, %struct.grub_iso9660_data** %5, align 8
  %27 = getelementptr inbounds %struct.grub_iso9660_data, %struct.grub_iso9660_data* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 6
  %30 = load i32*, i32** %29, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 1
  %32 = load i32, i32* %31, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %164, label %34

34:                                               ; preds = %25
  %35 = load %struct.grub_iso9660_data*, %struct.grub_iso9660_data** %5, align 8
  %36 = getelementptr inbounds %struct.grub_iso9660_data, %struct.grub_iso9660_data* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 6
  %39 = load i32*, i32** %38, align 8
  %40 = getelementptr inbounds i32, i32* %39, i64 2
  %41 = load i32, i32* %40, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %164, label %43

43:                                               ; preds = %34
  %44 = load %struct.grub_iso9660_data*, %struct.grub_iso9660_data** %5, align 8
  %45 = getelementptr inbounds %struct.grub_iso9660_data, %struct.grub_iso9660_data* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 6
  %48 = load i32*, i32** %47, align 8
  %49 = getelementptr inbounds i32, i32* %48, i64 3
  %50 = load i32, i32* %49, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %164, label %52

52:                                               ; preds = %43
  %53 = load %struct.grub_iso9660_data*, %struct.grub_iso9660_data** %5, align 8
  %54 = getelementptr inbounds %struct.grub_iso9660_data, %struct.grub_iso9660_data* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 5
  %57 = load i32*, i32** %56, align 8
  %58 = getelementptr inbounds i32, i32* %57, i64 0
  %59 = load i32, i32* %58, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %164, label %61

61:                                               ; preds = %52
  %62 = load %struct.grub_iso9660_data*, %struct.grub_iso9660_data** %5, align 8
  %63 = getelementptr inbounds %struct.grub_iso9660_data, %struct.grub_iso9660_data* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 5
  %66 = load i32*, i32** %65, align 8
  %67 = getelementptr inbounds i32, i32* %66, i64 1
  %68 = load i32, i32* %67, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %164, label %70

70:                                               ; preds = %61
  %71 = load %struct.grub_iso9660_data*, %struct.grub_iso9660_data** %5, align 8
  %72 = getelementptr inbounds %struct.grub_iso9660_data, %struct.grub_iso9660_data* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %73, i32 0, i32 4
  %75 = load i32*, i32** %74, align 8
  %76 = getelementptr inbounds i32, i32* %75, i64 0
  %77 = load i32, i32* %76, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %164, label %79

79:                                               ; preds = %70
  %80 = load %struct.grub_iso9660_data*, %struct.grub_iso9660_data** %5, align 8
  %81 = getelementptr inbounds %struct.grub_iso9660_data, %struct.grub_iso9660_data* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %82, i32 0, i32 4
  %84 = load i32*, i32** %83, align 8
  %85 = getelementptr inbounds i32, i32* %84, i64 1
  %86 = load i32, i32* %85, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %164, label %88

88:                                               ; preds = %79
  %89 = load %struct.grub_iso9660_data*, %struct.grub_iso9660_data** %5, align 8
  %90 = getelementptr inbounds %struct.grub_iso9660_data, %struct.grub_iso9660_data* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %91, i32 0, i32 3
  %93 = load i32*, i32** %92, align 8
  %94 = getelementptr inbounds i32, i32* %93, i64 0
  %95 = load i32, i32* %94, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %164, label %97

97:                                               ; preds = %88
  %98 = load %struct.grub_iso9660_data*, %struct.grub_iso9660_data** %5, align 8
  %99 = getelementptr inbounds %struct.grub_iso9660_data, %struct.grub_iso9660_data* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %100, i32 0, i32 3
  %102 = load i32*, i32** %101, align 8
  %103 = getelementptr inbounds i32, i32* %102, i64 1
  %104 = load i32, i32* %103, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %164, label %106

106:                                              ; preds = %97
  %107 = load %struct.grub_iso9660_data*, %struct.grub_iso9660_data** %5, align 8
  %108 = getelementptr inbounds %struct.grub_iso9660_data, %struct.grub_iso9660_data* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %109, i32 0, i32 2
  %111 = load i32*, i32** %110, align 8
  %112 = getelementptr inbounds i32, i32* %111, i64 0
  %113 = load i32, i32* %112, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %164, label %115

115:                                              ; preds = %106
  %116 = load %struct.grub_iso9660_data*, %struct.grub_iso9660_data** %5, align 8
  %117 = getelementptr inbounds %struct.grub_iso9660_data, %struct.grub_iso9660_data* %116, i32 0, i32 0
  %118 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %118, i32 0, i32 2
  %120 = load i32*, i32** %119, align 8
  %121 = getelementptr inbounds i32, i32* %120, i64 1
  %122 = load i32, i32* %121, align 4
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %164, label %124

124:                                              ; preds = %115
  %125 = load %struct.grub_iso9660_data*, %struct.grub_iso9660_data** %5, align 8
  %126 = getelementptr inbounds %struct.grub_iso9660_data, %struct.grub_iso9660_data* %125, i32 0, i32 0
  %127 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %126, i32 0, i32 0
  %128 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %127, i32 0, i32 1
  %129 = load i32*, i32** %128, align 8
  %130 = getelementptr inbounds i32, i32* %129, i64 0
  %131 = load i32, i32* %130, align 4
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %164, label %133

133:                                              ; preds = %124
  %134 = load %struct.grub_iso9660_data*, %struct.grub_iso9660_data** %5, align 8
  %135 = getelementptr inbounds %struct.grub_iso9660_data, %struct.grub_iso9660_data* %134, i32 0, i32 0
  %136 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %135, i32 0, i32 0
  %137 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %136, i32 0, i32 1
  %138 = load i32*, i32** %137, align 8
  %139 = getelementptr inbounds i32, i32* %138, i64 1
  %140 = load i32, i32* %139, align 4
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %164, label %142

142:                                              ; preds = %133
  %143 = load %struct.grub_iso9660_data*, %struct.grub_iso9660_data** %5, align 8
  %144 = getelementptr inbounds %struct.grub_iso9660_data, %struct.grub_iso9660_data* %143, i32 0, i32 0
  %145 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %144, i32 0, i32 0
  %146 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %145, i32 0, i32 0
  %147 = load i32*, i32** %146, align 8
  %148 = getelementptr inbounds i32, i32* %147, i64 0
  %149 = load i32, i32* %148, align 4
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %164, label %151

151:                                              ; preds = %142
  %152 = load %struct.grub_iso9660_data*, %struct.grub_iso9660_data** %5, align 8
  %153 = getelementptr inbounds %struct.grub_iso9660_data, %struct.grub_iso9660_data* %152, i32 0, i32 0
  %154 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %153, i32 0, i32 0
  %155 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %154, i32 0, i32 0
  %156 = load i32*, i32** %155, align 8
  %157 = getelementptr inbounds i32, i32* %156, i64 1
  %158 = load i32, i32* %157, align 4
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %164, label %160

160:                                              ; preds = %151
  %161 = load i32, i32* @GRUB_ERR_BAD_NUMBER, align 4
  %162 = call i32 @grub_error(i32 %161, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0))
  %163 = load i8**, i8*** %4, align 8
  store i8* null, i8** %163, align 8
  br label %279

164:                                              ; preds = %151, %142, %133, %124, %115, %106, %97, %88, %79, %70, %61, %52, %43, %34, %25, %16
  %165 = load %struct.grub_iso9660_data*, %struct.grub_iso9660_data** %5, align 8
  %166 = getelementptr inbounds %struct.grub_iso9660_data, %struct.grub_iso9660_data* %165, i32 0, i32 0
  %167 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %166, i32 0, i32 0
  %168 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %167, i32 0, i32 6
  %169 = load i32*, i32** %168, align 8
  %170 = getelementptr inbounds i32, i32* %169, i64 0
  %171 = load i32, i32* %170, align 4
  %172 = load %struct.grub_iso9660_data*, %struct.grub_iso9660_data** %5, align 8
  %173 = getelementptr inbounds %struct.grub_iso9660_data, %struct.grub_iso9660_data* %172, i32 0, i32 0
  %174 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %173, i32 0, i32 0
  %175 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %174, i32 0, i32 6
  %176 = load i32*, i32** %175, align 8
  %177 = getelementptr inbounds i32, i32* %176, i64 1
  %178 = load i32, i32* %177, align 4
  %179 = load %struct.grub_iso9660_data*, %struct.grub_iso9660_data** %5, align 8
  %180 = getelementptr inbounds %struct.grub_iso9660_data, %struct.grub_iso9660_data* %179, i32 0, i32 0
  %181 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %180, i32 0, i32 0
  %182 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %181, i32 0, i32 6
  %183 = load i32*, i32** %182, align 8
  %184 = getelementptr inbounds i32, i32* %183, i64 2
  %185 = load i32, i32* %184, align 4
  %186 = load %struct.grub_iso9660_data*, %struct.grub_iso9660_data** %5, align 8
  %187 = getelementptr inbounds %struct.grub_iso9660_data, %struct.grub_iso9660_data* %186, i32 0, i32 0
  %188 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %187, i32 0, i32 0
  %189 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %188, i32 0, i32 6
  %190 = load i32*, i32** %189, align 8
  %191 = getelementptr inbounds i32, i32* %190, i64 3
  %192 = load i32, i32* %191, align 4
  %193 = load %struct.grub_iso9660_data*, %struct.grub_iso9660_data** %5, align 8
  %194 = getelementptr inbounds %struct.grub_iso9660_data, %struct.grub_iso9660_data* %193, i32 0, i32 0
  %195 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %194, i32 0, i32 0
  %196 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %195, i32 0, i32 5
  %197 = load i32*, i32** %196, align 8
  %198 = getelementptr inbounds i32, i32* %197, i64 0
  %199 = load i32, i32* %198, align 4
  %200 = load %struct.grub_iso9660_data*, %struct.grub_iso9660_data** %5, align 8
  %201 = getelementptr inbounds %struct.grub_iso9660_data, %struct.grub_iso9660_data* %200, i32 0, i32 0
  %202 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %201, i32 0, i32 0
  %203 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %202, i32 0, i32 5
  %204 = load i32*, i32** %203, align 8
  %205 = getelementptr inbounds i32, i32* %204, i64 1
  %206 = load i32, i32* %205, align 4
  %207 = load %struct.grub_iso9660_data*, %struct.grub_iso9660_data** %5, align 8
  %208 = getelementptr inbounds %struct.grub_iso9660_data, %struct.grub_iso9660_data* %207, i32 0, i32 0
  %209 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %208, i32 0, i32 0
  %210 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %209, i32 0, i32 4
  %211 = load i32*, i32** %210, align 8
  %212 = getelementptr inbounds i32, i32* %211, i64 0
  %213 = load i32, i32* %212, align 4
  %214 = load %struct.grub_iso9660_data*, %struct.grub_iso9660_data** %5, align 8
  %215 = getelementptr inbounds %struct.grub_iso9660_data, %struct.grub_iso9660_data* %214, i32 0, i32 0
  %216 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %215, i32 0, i32 0
  %217 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %216, i32 0, i32 4
  %218 = load i32*, i32** %217, align 8
  %219 = getelementptr inbounds i32, i32* %218, i64 1
  %220 = load i32, i32* %219, align 4
  %221 = load %struct.grub_iso9660_data*, %struct.grub_iso9660_data** %5, align 8
  %222 = getelementptr inbounds %struct.grub_iso9660_data, %struct.grub_iso9660_data* %221, i32 0, i32 0
  %223 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %222, i32 0, i32 0
  %224 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %223, i32 0, i32 3
  %225 = load i32*, i32** %224, align 8
  %226 = getelementptr inbounds i32, i32* %225, i64 0
  %227 = load i32, i32* %226, align 4
  %228 = load %struct.grub_iso9660_data*, %struct.grub_iso9660_data** %5, align 8
  %229 = getelementptr inbounds %struct.grub_iso9660_data, %struct.grub_iso9660_data* %228, i32 0, i32 0
  %230 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %229, i32 0, i32 0
  %231 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %230, i32 0, i32 3
  %232 = load i32*, i32** %231, align 8
  %233 = getelementptr inbounds i32, i32* %232, i64 1
  %234 = load i32, i32* %233, align 4
  %235 = load %struct.grub_iso9660_data*, %struct.grub_iso9660_data** %5, align 8
  %236 = getelementptr inbounds %struct.grub_iso9660_data, %struct.grub_iso9660_data* %235, i32 0, i32 0
  %237 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %236, i32 0, i32 0
  %238 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %237, i32 0, i32 2
  %239 = load i32*, i32** %238, align 8
  %240 = getelementptr inbounds i32, i32* %239, i64 0
  %241 = load i32, i32* %240, align 4
  %242 = load %struct.grub_iso9660_data*, %struct.grub_iso9660_data** %5, align 8
  %243 = getelementptr inbounds %struct.grub_iso9660_data, %struct.grub_iso9660_data* %242, i32 0, i32 0
  %244 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %243, i32 0, i32 0
  %245 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %244, i32 0, i32 2
  %246 = load i32*, i32** %245, align 8
  %247 = getelementptr inbounds i32, i32* %246, i64 1
  %248 = load i32, i32* %247, align 4
  %249 = load %struct.grub_iso9660_data*, %struct.grub_iso9660_data** %5, align 8
  %250 = getelementptr inbounds %struct.grub_iso9660_data, %struct.grub_iso9660_data* %249, i32 0, i32 0
  %251 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %250, i32 0, i32 0
  %252 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %251, i32 0, i32 1
  %253 = load i32*, i32** %252, align 8
  %254 = getelementptr inbounds i32, i32* %253, i64 0
  %255 = load i32, i32* %254, align 4
  %256 = load %struct.grub_iso9660_data*, %struct.grub_iso9660_data** %5, align 8
  %257 = getelementptr inbounds %struct.grub_iso9660_data, %struct.grub_iso9660_data* %256, i32 0, i32 0
  %258 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %257, i32 0, i32 0
  %259 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %258, i32 0, i32 1
  %260 = load i32*, i32** %259, align 8
  %261 = getelementptr inbounds i32, i32* %260, i64 1
  %262 = load i32, i32* %261, align 4
  %263 = load %struct.grub_iso9660_data*, %struct.grub_iso9660_data** %5, align 8
  %264 = getelementptr inbounds %struct.grub_iso9660_data, %struct.grub_iso9660_data* %263, i32 0, i32 0
  %265 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %264, i32 0, i32 0
  %266 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %265, i32 0, i32 0
  %267 = load i32*, i32** %266, align 8
  %268 = getelementptr inbounds i32, i32* %267, i64 0
  %269 = load i32, i32* %268, align 4
  %270 = load %struct.grub_iso9660_data*, %struct.grub_iso9660_data** %5, align 8
  %271 = getelementptr inbounds %struct.grub_iso9660_data, %struct.grub_iso9660_data* %270, i32 0, i32 0
  %272 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %271, i32 0, i32 0
  %273 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %272, i32 0, i32 0
  %274 = load i32*, i32** %273, align 8
  %275 = getelementptr inbounds i32, i32* %274, i64 1
  %276 = load i32, i32* %275, align 4
  %277 = call i8* @grub_xasprintf(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i32 %171, i32 %178, i32 %185, i32 %192, i32 %199, i32 %206, i32 %213, i32 %220, i32 %227, i32 %234, i32 %241, i32 %248, i32 %255, i32 %262, i32 %269, i32 %276)
  %278 = load i8**, i8*** %4, align 8
  store i8* %277, i8** %278, align 8
  br label %279

279:                                              ; preds = %164, %160
  br label %282

280:                                              ; preds = %2
  %281 = load i8**, i8*** %4, align 8
  store i8* null, i8** %281, align 8
  br label %282

282:                                              ; preds = %280, %279
  %283 = load i32, i32* @my_mod, align 4
  %284 = call i32 @grub_dl_unref(i32 %283)
  %285 = load %struct.grub_iso9660_data*, %struct.grub_iso9660_data** %5, align 8
  %286 = call i32 @grub_free(%struct.grub_iso9660_data* %285)
  %287 = load i32, i32* @grub_errno, align 4
  ret i32 %287
}

declare dso_local i32 @grub_dl_ref(i32) #1

declare dso_local %struct.grub_iso9660_data* @grub_iso9660_mount(i32) #1

declare dso_local i32 @grub_error(i32, i8*) #1

declare dso_local i8* @grub_xasprintf(i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @grub_dl_unref(i32) #1

declare dso_local i32 @grub_free(%struct.grub_iso9660_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
