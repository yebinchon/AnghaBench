; ModuleID = '/home/carl/AnghaBench/radare2/shlr/grub/fs/extr_hfsplus.c_list_nodes.c'
source_filename = "/home/carl/AnghaBench/radare2/shlr/grub/fs/extr_hfsplus.c_list_nodes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.grub_hfsplus_iterate_dir_closure = type { i32 (i8*, i32, %struct.grub_fshelp_node*, i32)*, i32, i32, %struct.TYPE_5__* }
%struct.grub_fshelp_node = type opaque
%struct.TYPE_5__ = type { i64, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.grub_hfsplus_catkey = type { i32, i32, i32*, i32 }
%struct.grub_fshelp_node.0 = type { i64, i32, i64, i32, %struct.TYPE_4__* }
%struct.grub_hfsplus_catfile = type { i32, i32, i32, %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { i32, i32 }

@GRUB_FSHELP_UNKNOWN = common dso_local global i32 0, align 4
@GRUB_HFSPLUS_FILETYPE_REG = common dso_local global i32 0, align 4
@GRUB_HFSPLUS_FILEMODE_MASK = common dso_local global i32 0, align 4
@GRUB_HFSPLUS_FILEMODE_REG = common dso_local global i32 0, align 4
@GRUB_FSHELP_REG = common dso_local global i32 0, align 4
@GRUB_HFSPLUS_FILEMODE_SYMLINK = common dso_local global i32 0, align 4
@GRUB_FSHELP_SYMLINK = common dso_local global i32 0, align 4
@GRUB_HFSPLUS_FILETYPE_DIR = common dso_local global i32 0, align 4
@GRUB_FSHELP_DIR = common dso_local global i32 0, align 4
@GRUB_FSHELP_CASE_INSENSITIVE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*)* @list_nodes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @list_nodes(i8* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.grub_hfsplus_iterate_dir_closure*, align 8
  %7 = alloca %struct.grub_hfsplus_catkey*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.grub_fshelp_node.0*, align 8
  %11 = alloca %struct.grub_hfsplus_catfile*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %14 = load i8*, i8** %5, align 8
  %15 = bitcast i8* %14 to %struct.grub_hfsplus_iterate_dir_closure*
  store %struct.grub_hfsplus_iterate_dir_closure* %15, %struct.grub_hfsplus_iterate_dir_closure** %6, align 8
  %16 = load i32, i32* @GRUB_FSHELP_UNKNOWN, align 4
  store i32 %16, i32* %12, align 4
  %17 = load i8*, i8** %4, align 8
  %18 = bitcast i8* %17 to %struct.grub_hfsplus_catkey*
  store %struct.grub_hfsplus_catkey* %18, %struct.grub_hfsplus_catkey** %7, align 8
  %19 = load i8*, i8** %4, align 8
  %20 = load %struct.grub_hfsplus_catkey*, %struct.grub_hfsplus_catkey** %7, align 8
  %21 = getelementptr inbounds %struct.grub_hfsplus_catkey, %struct.grub_hfsplus_catkey* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @grub_be_to_cpu16(i32 %22)
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i8, i8* %19, i64 %24
  %26 = getelementptr inbounds i8, i8* %25, i64 2
  %27 = load %struct.grub_hfsplus_catkey*, %struct.grub_hfsplus_catkey** %7, align 8
  %28 = getelementptr inbounds %struct.grub_hfsplus_catkey, %struct.grub_hfsplus_catkey* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @grub_be_to_cpu16(i32 %29)
  %31 = srem i32 %30, 2
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i8, i8* %26, i64 %32
  %34 = bitcast i8* %33 to %struct.grub_hfsplus_catfile*
  store %struct.grub_hfsplus_catfile* %34, %struct.grub_hfsplus_catfile** %11, align 8
  %35 = load %struct.grub_hfsplus_catkey*, %struct.grub_hfsplus_catkey** %7, align 8
  %36 = getelementptr inbounds %struct.grub_hfsplus_catkey, %struct.grub_hfsplus_catkey* %35, i32 0, i32 3
  %37 = load i32, i32* %36, align 8
  %38 = call i64 @grub_be_to_cpu32(i32 %37)
  %39 = load %struct.grub_hfsplus_iterate_dir_closure*, %struct.grub_hfsplus_iterate_dir_closure** %6, align 8
  %40 = getelementptr inbounds %struct.grub_hfsplus_iterate_dir_closure, %struct.grub_hfsplus_iterate_dir_closure* %39, i32 0, i32 3
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %38, %43
  br i1 %44, label %45, label %46

45:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %271

46:                                               ; preds = %2
  %47 = load %struct.grub_hfsplus_catfile*, %struct.grub_hfsplus_catfile** %11, align 8
  %48 = getelementptr inbounds %struct.grub_hfsplus_catfile, %struct.grub_hfsplus_catfile* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @grub_be_to_cpu16(i32 %49)
  %51 = load i32, i32* @GRUB_HFSPLUS_FILETYPE_REG, align 4
  %52 = icmp eq i32 %50, %51
  br i1 %52, label %53, label %75

53:                                               ; preds = %46
  %54 = load %struct.grub_hfsplus_catfile*, %struct.grub_hfsplus_catfile** %11, align 8
  %55 = getelementptr inbounds %struct.grub_hfsplus_catfile, %struct.grub_hfsplus_catfile* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @grub_be_to_cpu16(i32 %56)
  %58 = load i32, i32* @GRUB_HFSPLUS_FILEMODE_MASK, align 4
  %59 = and i32 %57, %58
  store i32 %59, i32* %13, align 4
  %60 = load i32, i32* %13, align 4
  %61 = load i32, i32* @GRUB_HFSPLUS_FILEMODE_REG, align 4
  %62 = icmp eq i32 %60, %61
  br i1 %62, label %63, label %65

63:                                               ; preds = %53
  %64 = load i32, i32* @GRUB_FSHELP_REG, align 4
  store i32 %64, i32* %12, align 4
  br label %74

65:                                               ; preds = %53
  %66 = load i32, i32* %13, align 4
  %67 = load i32, i32* @GRUB_HFSPLUS_FILEMODE_SYMLINK, align 4
  %68 = icmp eq i32 %66, %67
  br i1 %68, label %69, label %71

69:                                               ; preds = %65
  %70 = load i32, i32* @GRUB_FSHELP_SYMLINK, align 4
  store i32 %70, i32* %12, align 4
  br label %73

71:                                               ; preds = %65
  %72 = load i32, i32* @GRUB_FSHELP_UNKNOWN, align 4
  store i32 %72, i32* %12, align 4
  br label %73

73:                                               ; preds = %71, %69
  br label %74

74:                                               ; preds = %73, %63
  br label %85

75:                                               ; preds = %46
  %76 = load %struct.grub_hfsplus_catfile*, %struct.grub_hfsplus_catfile** %11, align 8
  %77 = getelementptr inbounds %struct.grub_hfsplus_catfile, %struct.grub_hfsplus_catfile* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @grub_be_to_cpu16(i32 %78)
  %80 = load i32, i32* @GRUB_HFSPLUS_FILETYPE_DIR, align 4
  %81 = icmp eq i32 %79, %80
  br i1 %81, label %82, label %84

82:                                               ; preds = %75
  %83 = load i32, i32* @GRUB_FSHELP_DIR, align 4
  store i32 %83, i32* %12, align 4
  br label %84

84:                                               ; preds = %82, %75
  br label %85

85:                                               ; preds = %84, %74
  %86 = load i32, i32* %12, align 4
  %87 = load i32, i32* @GRUB_FSHELP_UNKNOWN, align 4
  %88 = icmp eq i32 %86, %87
  br i1 %88, label %89, label %90

89:                                               ; preds = %85
  store i32 0, i32* %3, align 4
  br label %271

90:                                               ; preds = %85
  store i32 0, i32* %9, align 4
  br label %91

91:                                               ; preds = %123, %90
  %92 = load i32, i32* %9, align 4
  %93 = load %struct.grub_hfsplus_catkey*, %struct.grub_hfsplus_catkey** %7, align 8
  %94 = getelementptr inbounds %struct.grub_hfsplus_catkey, %struct.grub_hfsplus_catkey* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = call i32 @grub_be_to_cpu16(i32 %95)
  %97 = icmp slt i32 %92, %96
  br i1 %97, label %98, label %126

98:                                               ; preds = %91
  %99 = load %struct.grub_hfsplus_catkey*, %struct.grub_hfsplus_catkey** %7, align 8
  %100 = getelementptr inbounds %struct.grub_hfsplus_catkey, %struct.grub_hfsplus_catkey* %99, i32 0, i32 2
  %101 = load i32*, i32** %100, align 8
  %102 = load i32, i32* %9, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds i32, i32* %101, i64 %103
  %105 = load i32, i32* %104, align 4
  %106 = call i32 @grub_be_to_cpu16(i32 %105)
  %107 = load %struct.grub_hfsplus_catkey*, %struct.grub_hfsplus_catkey** %7, align 8
  %108 = getelementptr inbounds %struct.grub_hfsplus_catkey, %struct.grub_hfsplus_catkey* %107, i32 0, i32 2
  %109 = load i32*, i32** %108, align 8
  %110 = load i32, i32* %9, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds i32, i32* %109, i64 %111
  store i32 %106, i32* %112, align 4
  %113 = load %struct.grub_hfsplus_catkey*, %struct.grub_hfsplus_catkey** %7, align 8
  %114 = getelementptr inbounds %struct.grub_hfsplus_catkey, %struct.grub_hfsplus_catkey* %113, i32 0, i32 2
  %115 = load i32*, i32** %114, align 8
  %116 = load i32, i32* %9, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds i32, i32* %115, i64 %117
  %119 = load i32, i32* %118, align 4
  %120 = icmp eq i32 %119, 0
  br i1 %120, label %121, label %122

121:                                              ; preds = %98
  store i32 0, i32* %3, align 4
  br label %271

122:                                              ; preds = %98
  br label %123

123:                                              ; preds = %122
  %124 = load i32, i32* %9, align 4
  %125 = add nsw i32 %124, 1
  store i32 %125, i32* %9, align 4
  br label %91

126:                                              ; preds = %91
  %127 = load %struct.grub_hfsplus_catkey*, %struct.grub_hfsplus_catkey** %7, align 8
  %128 = getelementptr inbounds %struct.grub_hfsplus_catkey, %struct.grub_hfsplus_catkey* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 4
  %130 = call i32 @grub_be_to_cpu16(i32 %129)
  %131 = add nsw i32 %130, 1
  %132 = call i8* @grub_malloc(i32 %131)
  store i8* %132, i8** %8, align 8
  %133 = load i8*, i8** %8, align 8
  %134 = icmp ne i8* %133, null
  br i1 %134, label %136, label %135

135:                                              ; preds = %126
  store i32 0, i32* %3, align 4
  br label %271

136:                                              ; preds = %126
  %137 = load i8*, i8** %8, align 8
  %138 = bitcast i8* %137 to i32*
  %139 = load %struct.grub_hfsplus_catkey*, %struct.grub_hfsplus_catkey** %7, align 8
  %140 = getelementptr inbounds %struct.grub_hfsplus_catkey, %struct.grub_hfsplus_catkey* %139, i32 0, i32 2
  %141 = load i32*, i32** %140, align 8
  %142 = load %struct.grub_hfsplus_catkey*, %struct.grub_hfsplus_catkey** %7, align 8
  %143 = getelementptr inbounds %struct.grub_hfsplus_catkey, %struct.grub_hfsplus_catkey* %142, i32 0, i32 1
  %144 = load i32, i32* %143, align 4
  %145 = call i32 @grub_be_to_cpu16(i32 %144)
  %146 = call i32 @grub_utf16_to_utf8(i32* %138, i32* %141, i32 %145)
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %151, label %148

148:                                              ; preds = %136
  %149 = load i8*, i8** %8, align 8
  %150 = call i32 @grub_free(i8* %149)
  store i32 0, i32* %3, align 4
  br label %271

151:                                              ; preds = %136
  %152 = load i8*, i8** %8, align 8
  %153 = load %struct.grub_hfsplus_catkey*, %struct.grub_hfsplus_catkey** %7, align 8
  %154 = getelementptr inbounds %struct.grub_hfsplus_catkey, %struct.grub_hfsplus_catkey* %153, i32 0, i32 1
  %155 = load i32, i32* %154, align 4
  %156 = call i32 @grub_be_to_cpu16(i32 %155)
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds i8, i8* %152, i64 %157
  store i8 0, i8* %158, align 1
  store i32 0, i32* %9, align 4
  br label %159

159:                                              ; preds = %181, %151
  %160 = load i32, i32* %9, align 4
  %161 = load %struct.grub_hfsplus_catkey*, %struct.grub_hfsplus_catkey** %7, align 8
  %162 = getelementptr inbounds %struct.grub_hfsplus_catkey, %struct.grub_hfsplus_catkey* %161, i32 0, i32 1
  %163 = load i32, i32* %162, align 4
  %164 = call i32 @grub_be_to_cpu16(i32 %163)
  %165 = icmp slt i32 %160, %164
  br i1 %165, label %166, label %184

166:                                              ; preds = %159
  %167 = load %struct.grub_hfsplus_catkey*, %struct.grub_hfsplus_catkey** %7, align 8
  %168 = getelementptr inbounds %struct.grub_hfsplus_catkey, %struct.grub_hfsplus_catkey* %167, i32 0, i32 2
  %169 = load i32*, i32** %168, align 8
  %170 = load i32, i32* %9, align 4
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds i32, i32* %169, i64 %171
  %173 = load i32, i32* %172, align 4
  %174 = call i32 @grub_be_to_cpu16(i32 %173)
  %175 = load %struct.grub_hfsplus_catkey*, %struct.grub_hfsplus_catkey** %7, align 8
  %176 = getelementptr inbounds %struct.grub_hfsplus_catkey, %struct.grub_hfsplus_catkey* %175, i32 0, i32 2
  %177 = load i32*, i32** %176, align 8
  %178 = load i32, i32* %9, align 4
  %179 = sext i32 %178 to i64
  %180 = getelementptr inbounds i32, i32* %177, i64 %179
  store i32 %174, i32* %180, align 4
  br label %181

181:                                              ; preds = %166
  %182 = load i32, i32* %9, align 4
  %183 = add nsw i32 %182, 1
  store i32 %183, i32* %9, align 4
  br label %159

184:                                              ; preds = %159
  %185 = load %struct.grub_hfsplus_iterate_dir_closure*, %struct.grub_hfsplus_iterate_dir_closure** %6, align 8
  %186 = getelementptr inbounds %struct.grub_hfsplus_iterate_dir_closure, %struct.grub_hfsplus_iterate_dir_closure* %185, i32 0, i32 3
  %187 = load %struct.TYPE_5__*, %struct.TYPE_5__** %186, align 8
  %188 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %187, i32 0, i32 1
  %189 = load %struct.TYPE_4__*, %struct.TYPE_4__** %188, align 8
  %190 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %189, i32 0, i32 0
  %191 = load i32, i32* %190, align 4
  %192 = icmp ne i32 %191, 0
  br i1 %192, label %197, label %193

193:                                              ; preds = %184
  %194 = load i32, i32* @GRUB_FSHELP_CASE_INSENSITIVE, align 4
  %195 = load i32, i32* %12, align 4
  %196 = or i32 %195, %194
  store i32 %196, i32* %12, align 4
  br label %197

197:                                              ; preds = %193, %184
  %198 = load i8*, i8** %8, align 8
  %199 = call i32 @grub_strlen(i8* %198)
  %200 = load %struct.grub_hfsplus_catkey*, %struct.grub_hfsplus_catkey** %7, align 8
  %201 = getelementptr inbounds %struct.grub_hfsplus_catkey, %struct.grub_hfsplus_catkey* %200, i32 0, i32 1
  %202 = load i32, i32* %201, align 4
  %203 = call i32 @grub_be_to_cpu16(i32 %202)
  %204 = icmp eq i32 %199, %203
  br i1 %204, label %205, label %265

205:                                              ; preds = %197
  %206 = call i8* @grub_malloc(i32 40)
  %207 = bitcast i8* %206 to %struct.grub_fshelp_node.0*
  store %struct.grub_fshelp_node.0* %207, %struct.grub_fshelp_node.0** %10, align 8
  %208 = load %struct.grub_hfsplus_iterate_dir_closure*, %struct.grub_hfsplus_iterate_dir_closure** %6, align 8
  %209 = getelementptr inbounds %struct.grub_hfsplus_iterate_dir_closure, %struct.grub_hfsplus_iterate_dir_closure* %208, i32 0, i32 3
  %210 = load %struct.TYPE_5__*, %struct.TYPE_5__** %209, align 8
  %211 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %210, i32 0, i32 1
  %212 = load %struct.TYPE_4__*, %struct.TYPE_4__** %211, align 8
  %213 = load %struct.grub_fshelp_node.0*, %struct.grub_fshelp_node.0** %10, align 8
  %214 = getelementptr inbounds %struct.grub_fshelp_node.0, %struct.grub_fshelp_node.0* %213, i32 0, i32 4
  store %struct.TYPE_4__* %212, %struct.TYPE_4__** %214, align 8
  %215 = load %struct.grub_fshelp_node.0*, %struct.grub_fshelp_node.0** %10, align 8
  %216 = getelementptr inbounds %struct.grub_fshelp_node.0, %struct.grub_fshelp_node.0* %215, i32 0, i32 3
  %217 = load i32, i32* %216, align 8
  %218 = load %struct.grub_hfsplus_catfile*, %struct.grub_hfsplus_catfile** %11, align 8
  %219 = getelementptr inbounds %struct.grub_hfsplus_catfile, %struct.grub_hfsplus_catfile* %218, i32 0, i32 3
  %220 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %219, i32 0, i32 1
  %221 = load i32, i32* %220, align 4
  %222 = call i32 @grub_memcpy(i32 %217, i32 %221, i32 4)
  %223 = load %struct.grub_hfsplus_catfile*, %struct.grub_hfsplus_catfile** %11, align 8
  %224 = getelementptr inbounds %struct.grub_hfsplus_catfile, %struct.grub_hfsplus_catfile* %223, i32 0, i32 4
  %225 = load i32, i32* %224, align 4
  %226 = call i64 @grub_be_to_cpu32(i32 %225)
  %227 = sub nsw i64 %226, 2082844800
  %228 = load %struct.grub_fshelp_node.0*, %struct.grub_fshelp_node.0** %10, align 8
  %229 = getelementptr inbounds %struct.grub_fshelp_node.0, %struct.grub_fshelp_node.0* %228, i32 0, i32 2
  store i64 %227, i64* %229, align 8
  %230 = load %struct.grub_hfsplus_catfile*, %struct.grub_hfsplus_catfile** %11, align 8
  %231 = getelementptr inbounds %struct.grub_hfsplus_catfile, %struct.grub_hfsplus_catfile* %230, i32 0, i32 3
  %232 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %231, i32 0, i32 0
  %233 = load i32, i32* %232, align 4
  %234 = call i32 @grub_be_to_cpu64(i32 %233)
  %235 = load %struct.grub_fshelp_node.0*, %struct.grub_fshelp_node.0** %10, align 8
  %236 = getelementptr inbounds %struct.grub_fshelp_node.0, %struct.grub_fshelp_node.0* %235, i32 0, i32 1
  store i32 %234, i32* %236, align 8
  %237 = load %struct.grub_hfsplus_catfile*, %struct.grub_hfsplus_catfile** %11, align 8
  %238 = getelementptr inbounds %struct.grub_hfsplus_catfile, %struct.grub_hfsplus_catfile* %237, i32 0, i32 2
  %239 = load i32, i32* %238, align 4
  %240 = call i64 @grub_be_to_cpu32(i32 %239)
  %241 = load %struct.grub_fshelp_node.0*, %struct.grub_fshelp_node.0** %10, align 8
  %242 = getelementptr inbounds %struct.grub_fshelp_node.0, %struct.grub_fshelp_node.0* %241, i32 0, i32 0
  store i64 %240, i64* %242, align 8
  %243 = load %struct.grub_hfsplus_iterate_dir_closure*, %struct.grub_hfsplus_iterate_dir_closure** %6, align 8
  %244 = getelementptr inbounds %struct.grub_hfsplus_iterate_dir_closure, %struct.grub_hfsplus_iterate_dir_closure* %243, i32 0, i32 0
  %245 = load i32 (i8*, i32, %struct.grub_fshelp_node*, i32)*, i32 (i8*, i32, %struct.grub_fshelp_node*, i32)** %244, align 8
  %246 = icmp eq i32 (i8*, i32, %struct.grub_fshelp_node*, i32)* %245, null
  br i1 %246, label %247, label %250

247:                                              ; preds = %205
  %248 = load %struct.grub_hfsplus_iterate_dir_closure*, %struct.grub_hfsplus_iterate_dir_closure** %6, align 8
  %249 = getelementptr inbounds %struct.grub_hfsplus_iterate_dir_closure, %struct.grub_hfsplus_iterate_dir_closure* %248, i32 0, i32 1
  store i32 0, i32* %249, align 8
  br label %264

250:                                              ; preds = %205
  %251 = load %struct.grub_hfsplus_iterate_dir_closure*, %struct.grub_hfsplus_iterate_dir_closure** %6, align 8
  %252 = getelementptr inbounds %struct.grub_hfsplus_iterate_dir_closure, %struct.grub_hfsplus_iterate_dir_closure* %251, i32 0, i32 0
  %253 = load i32 (i8*, i32, %struct.grub_fshelp_node*, i32)*, i32 (i8*, i32, %struct.grub_fshelp_node*, i32)** %252, align 8
  %254 = load i8*, i8** %8, align 8
  %255 = load i32, i32* %12, align 4
  %256 = load %struct.grub_fshelp_node.0*, %struct.grub_fshelp_node.0** %10, align 8
  %257 = bitcast %struct.grub_fshelp_node.0* %256 to %struct.grub_fshelp_node*
  %258 = load %struct.grub_hfsplus_iterate_dir_closure*, %struct.grub_hfsplus_iterate_dir_closure** %6, align 8
  %259 = getelementptr inbounds %struct.grub_hfsplus_iterate_dir_closure, %struct.grub_hfsplus_iterate_dir_closure* %258, i32 0, i32 2
  %260 = load i32, i32* %259, align 4
  %261 = call i32 %253(i8* %254, i32 %255, %struct.grub_fshelp_node* %257, i32 %260)
  %262 = load %struct.grub_hfsplus_iterate_dir_closure*, %struct.grub_hfsplus_iterate_dir_closure** %6, align 8
  %263 = getelementptr inbounds %struct.grub_hfsplus_iterate_dir_closure, %struct.grub_hfsplus_iterate_dir_closure* %262, i32 0, i32 1
  store i32 %261, i32* %263, align 8
  br label %264

264:                                              ; preds = %250, %247
  br label %265

265:                                              ; preds = %264, %197
  %266 = load i8*, i8** %8, align 8
  %267 = call i32 @grub_free(i8* %266)
  %268 = load %struct.grub_hfsplus_iterate_dir_closure*, %struct.grub_hfsplus_iterate_dir_closure** %6, align 8
  %269 = getelementptr inbounds %struct.grub_hfsplus_iterate_dir_closure, %struct.grub_hfsplus_iterate_dir_closure* %268, i32 0, i32 1
  %270 = load i32, i32* %269, align 8
  store i32 %270, i32* %3, align 4
  br label %271

271:                                              ; preds = %265, %148, %135, %121, %89, %45
  %272 = load i32, i32* %3, align 4
  ret i32 %272
}

declare dso_local i32 @grub_be_to_cpu16(i32) #1

declare dso_local i64 @grub_be_to_cpu32(i32) #1

declare dso_local i8* @grub_malloc(i32) #1

declare dso_local i32 @grub_utf16_to_utf8(i32*, i32*, i32) #1

declare dso_local i32 @grub_free(i8*) #1

declare dso_local i32 @grub_strlen(i8*) #1

declare dso_local i32 @grub_memcpy(i32, i32, i32) #1

declare dso_local i32 @grub_be_to_cpu64(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
