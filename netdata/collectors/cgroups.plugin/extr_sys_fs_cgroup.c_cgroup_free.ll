; ModuleID = '/home/carl/AnghaBench/netdata/collectors/cgroups.plugin/extr_sys_fs_cgroup.c_cgroup_free.c'
source_filename = "/home/carl/AnghaBench/netdata/collectors/cgroups.plugin/extr_sys_fs_cgroup.c_cgroup_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cgroup = type { %struct.cgroup*, %struct.cgroup*, %struct.cgroup*, %struct.TYPE_18__, %struct.TYPE_17__, %struct.TYPE_16__, %struct.TYPE_15__, %struct.TYPE_14__, %struct.TYPE_13__, %struct.TYPE_12__, %struct.TYPE_11__, %struct.TYPE_10__, %struct.cgroup*, %struct.cgroup*, %struct.cgroup*, %struct.cgroup*, %struct.cgroup*, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.TYPE_18__ = type { %struct.cgroup* }
%struct.TYPE_17__ = type { %struct.cgroup* }
%struct.TYPE_16__ = type { %struct.cgroup* }
%struct.TYPE_15__ = type { %struct.cgroup* }
%struct.TYPE_14__ = type { %struct.cgroup* }
%struct.TYPE_13__ = type { %struct.cgroup* }
%struct.TYPE_12__ = type { %struct.cgroup*, %struct.cgroup*, %struct.cgroup*, %struct.cgroup*, i32 }
%struct.TYPE_11__ = type { %struct.cgroup*, %struct.cgroup* }
%struct.TYPE_10__ = type { %struct.cgroup* }

@D_CGROUP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [56 x i8] c"Removing cgroup '%s' with chart id '%s' (was %s and %s)\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"enabled\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"disabled\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"available\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"not available\00", align 1
@cgroup_root_count = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cgroup*)* @cgroup_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cgroup_free(%struct.cgroup* %0) #0 {
  %2 = alloca %struct.cgroup*, align 8
  store %struct.cgroup* %0, %struct.cgroup** %2, align 8
  %3 = load i32, i32* @D_CGROUP, align 4
  %4 = load %struct.cgroup*, %struct.cgroup** %2, align 8
  %5 = getelementptr inbounds %struct.cgroup, %struct.cgroup* %4, i32 0, i32 2
  %6 = load %struct.cgroup*, %struct.cgroup** %5, align 8
  %7 = load %struct.cgroup*, %struct.cgroup** %2, align 8
  %8 = getelementptr inbounds %struct.cgroup, %struct.cgroup* %7, i32 0, i32 1
  %9 = load %struct.cgroup*, %struct.cgroup** %8, align 8
  %10 = load %struct.cgroup*, %struct.cgroup** %2, align 8
  %11 = getelementptr inbounds %struct.cgroup, %struct.cgroup* %10, i32 0, i32 34
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  %14 = zext i1 %13 to i64
  %15 = select i1 %13, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0)
  %16 = load %struct.cgroup*, %struct.cgroup** %2, align 8
  %17 = getelementptr inbounds %struct.cgroup, %struct.cgroup* %16, i32 0, i32 33
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  %20 = zext i1 %19 to i64
  %21 = select i1 %19, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0)
  %22 = call i32 @debug(i32 %3, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str, i64 0, i64 0), %struct.cgroup* %6, %struct.cgroup* %9, i8* %15, i8* %21)
  %23 = load %struct.cgroup*, %struct.cgroup** %2, align 8
  %24 = getelementptr inbounds %struct.cgroup, %struct.cgroup* %23, i32 0, i32 32
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %1
  %28 = load %struct.cgroup*, %struct.cgroup** %2, align 8
  %29 = getelementptr inbounds %struct.cgroup, %struct.cgroup* %28, i32 0, i32 32
  %30 = load i64, i64* %29, align 8
  %31 = call i32 @rrdset_is_obsolete(i64 %30)
  br label %32

32:                                               ; preds = %27, %1
  %33 = load %struct.cgroup*, %struct.cgroup** %2, align 8
  %34 = getelementptr inbounds %struct.cgroup, %struct.cgroup* %33, i32 0, i32 31
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %42

37:                                               ; preds = %32
  %38 = load %struct.cgroup*, %struct.cgroup** %2, align 8
  %39 = getelementptr inbounds %struct.cgroup, %struct.cgroup* %38, i32 0, i32 31
  %40 = load i64, i64* %39, align 8
  %41 = call i32 @rrdset_is_obsolete(i64 %40)
  br label %42

42:                                               ; preds = %37, %32
  %43 = load %struct.cgroup*, %struct.cgroup** %2, align 8
  %44 = getelementptr inbounds %struct.cgroup, %struct.cgroup* %43, i32 0, i32 30
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %52

47:                                               ; preds = %42
  %48 = load %struct.cgroup*, %struct.cgroup** %2, align 8
  %49 = getelementptr inbounds %struct.cgroup, %struct.cgroup* %48, i32 0, i32 30
  %50 = load i64, i64* %49, align 8
  %51 = call i32 @rrdset_is_obsolete(i64 %50)
  br label %52

52:                                               ; preds = %47, %42
  %53 = load %struct.cgroup*, %struct.cgroup** %2, align 8
  %54 = getelementptr inbounds %struct.cgroup, %struct.cgroup* %53, i32 0, i32 29
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %62

57:                                               ; preds = %52
  %58 = load %struct.cgroup*, %struct.cgroup** %2, align 8
  %59 = getelementptr inbounds %struct.cgroup, %struct.cgroup* %58, i32 0, i32 29
  %60 = load i64, i64* %59, align 8
  %61 = call i32 @rrdset_is_obsolete(i64 %60)
  br label %62

62:                                               ; preds = %57, %52
  %63 = load %struct.cgroup*, %struct.cgroup** %2, align 8
  %64 = getelementptr inbounds %struct.cgroup, %struct.cgroup* %63, i32 0, i32 28
  %65 = load i64, i64* %64, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %72

67:                                               ; preds = %62
  %68 = load %struct.cgroup*, %struct.cgroup** %2, align 8
  %69 = getelementptr inbounds %struct.cgroup, %struct.cgroup* %68, i32 0, i32 28
  %70 = load i64, i64* %69, align 8
  %71 = call i32 @rrdset_is_obsolete(i64 %70)
  br label %72

72:                                               ; preds = %67, %62
  %73 = load %struct.cgroup*, %struct.cgroup** %2, align 8
  %74 = getelementptr inbounds %struct.cgroup, %struct.cgroup* %73, i32 0, i32 27
  %75 = load i64, i64* %74, align 8
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %82

77:                                               ; preds = %72
  %78 = load %struct.cgroup*, %struct.cgroup** %2, align 8
  %79 = getelementptr inbounds %struct.cgroup, %struct.cgroup* %78, i32 0, i32 27
  %80 = load i64, i64* %79, align 8
  %81 = call i32 @rrdset_is_obsolete(i64 %80)
  br label %82

82:                                               ; preds = %77, %72
  %83 = load %struct.cgroup*, %struct.cgroup** %2, align 8
  %84 = getelementptr inbounds %struct.cgroup, %struct.cgroup* %83, i32 0, i32 26
  %85 = load i64, i64* %84, align 8
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %92

87:                                               ; preds = %82
  %88 = load %struct.cgroup*, %struct.cgroup** %2, align 8
  %89 = getelementptr inbounds %struct.cgroup, %struct.cgroup* %88, i32 0, i32 26
  %90 = load i64, i64* %89, align 8
  %91 = call i32 @rrdset_is_obsolete(i64 %90)
  br label %92

92:                                               ; preds = %87, %82
  %93 = load %struct.cgroup*, %struct.cgroup** %2, align 8
  %94 = getelementptr inbounds %struct.cgroup, %struct.cgroup* %93, i32 0, i32 25
  %95 = load i64, i64* %94, align 8
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %102

97:                                               ; preds = %92
  %98 = load %struct.cgroup*, %struct.cgroup** %2, align 8
  %99 = getelementptr inbounds %struct.cgroup, %struct.cgroup* %98, i32 0, i32 25
  %100 = load i64, i64* %99, align 8
  %101 = call i32 @rrdset_is_obsolete(i64 %100)
  br label %102

102:                                              ; preds = %97, %92
  %103 = load %struct.cgroup*, %struct.cgroup** %2, align 8
  %104 = getelementptr inbounds %struct.cgroup, %struct.cgroup* %103, i32 0, i32 24
  %105 = load i64, i64* %104, align 8
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %112

107:                                              ; preds = %102
  %108 = load %struct.cgroup*, %struct.cgroup** %2, align 8
  %109 = getelementptr inbounds %struct.cgroup, %struct.cgroup* %108, i32 0, i32 24
  %110 = load i64, i64* %109, align 8
  %111 = call i32 @rrdset_is_obsolete(i64 %110)
  br label %112

112:                                              ; preds = %107, %102
  %113 = load %struct.cgroup*, %struct.cgroup** %2, align 8
  %114 = getelementptr inbounds %struct.cgroup, %struct.cgroup* %113, i32 0, i32 23
  %115 = load i64, i64* %114, align 8
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %122

117:                                              ; preds = %112
  %118 = load %struct.cgroup*, %struct.cgroup** %2, align 8
  %119 = getelementptr inbounds %struct.cgroup, %struct.cgroup* %118, i32 0, i32 23
  %120 = load i64, i64* %119, align 8
  %121 = call i32 @rrdset_is_obsolete(i64 %120)
  br label %122

122:                                              ; preds = %117, %112
  %123 = load %struct.cgroup*, %struct.cgroup** %2, align 8
  %124 = getelementptr inbounds %struct.cgroup, %struct.cgroup* %123, i32 0, i32 22
  %125 = load i64, i64* %124, align 8
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %127, label %132

127:                                              ; preds = %122
  %128 = load %struct.cgroup*, %struct.cgroup** %2, align 8
  %129 = getelementptr inbounds %struct.cgroup, %struct.cgroup* %128, i32 0, i32 22
  %130 = load i64, i64* %129, align 8
  %131 = call i32 @rrdset_is_obsolete(i64 %130)
  br label %132

132:                                              ; preds = %127, %122
  %133 = load %struct.cgroup*, %struct.cgroup** %2, align 8
  %134 = getelementptr inbounds %struct.cgroup, %struct.cgroup* %133, i32 0, i32 21
  %135 = load i64, i64* %134, align 8
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %137, label %142

137:                                              ; preds = %132
  %138 = load %struct.cgroup*, %struct.cgroup** %2, align 8
  %139 = getelementptr inbounds %struct.cgroup, %struct.cgroup* %138, i32 0, i32 21
  %140 = load i64, i64* %139, align 8
  %141 = call i32 @rrdset_is_obsolete(i64 %140)
  br label %142

142:                                              ; preds = %137, %132
  %143 = load %struct.cgroup*, %struct.cgroup** %2, align 8
  %144 = getelementptr inbounds %struct.cgroup, %struct.cgroup* %143, i32 0, i32 20
  %145 = load i64, i64* %144, align 8
  %146 = icmp ne i64 %145, 0
  br i1 %146, label %147, label %152

147:                                              ; preds = %142
  %148 = load %struct.cgroup*, %struct.cgroup** %2, align 8
  %149 = getelementptr inbounds %struct.cgroup, %struct.cgroup* %148, i32 0, i32 20
  %150 = load i64, i64* %149, align 8
  %151 = call i32 @rrdset_is_obsolete(i64 %150)
  br label %152

152:                                              ; preds = %147, %142
  %153 = load %struct.cgroup*, %struct.cgroup** %2, align 8
  %154 = getelementptr inbounds %struct.cgroup, %struct.cgroup* %153, i32 0, i32 19
  %155 = load i64, i64* %154, align 8
  %156 = icmp ne i64 %155, 0
  br i1 %156, label %157, label %162

157:                                              ; preds = %152
  %158 = load %struct.cgroup*, %struct.cgroup** %2, align 8
  %159 = getelementptr inbounds %struct.cgroup, %struct.cgroup* %158, i32 0, i32 19
  %160 = load i64, i64* %159, align 8
  %161 = call i32 @rrdset_is_obsolete(i64 %160)
  br label %162

162:                                              ; preds = %157, %152
  %163 = load %struct.cgroup*, %struct.cgroup** %2, align 8
  %164 = getelementptr inbounds %struct.cgroup, %struct.cgroup* %163, i32 0, i32 18
  %165 = load i64, i64* %164, align 8
  %166 = icmp ne i64 %165, 0
  br i1 %166, label %167, label %172

167:                                              ; preds = %162
  %168 = load %struct.cgroup*, %struct.cgroup** %2, align 8
  %169 = getelementptr inbounds %struct.cgroup, %struct.cgroup* %168, i32 0, i32 18
  %170 = load i64, i64* %169, align 8
  %171 = call i32 @rrdset_is_obsolete(i64 %170)
  br label %172

172:                                              ; preds = %167, %162
  %173 = load %struct.cgroup*, %struct.cgroup** %2, align 8
  %174 = getelementptr inbounds %struct.cgroup, %struct.cgroup* %173, i32 0, i32 17
  %175 = load i64, i64* %174, align 8
  %176 = icmp ne i64 %175, 0
  br i1 %176, label %177, label %182

177:                                              ; preds = %172
  %178 = load %struct.cgroup*, %struct.cgroup** %2, align 8
  %179 = getelementptr inbounds %struct.cgroup, %struct.cgroup* %178, i32 0, i32 17
  %180 = load i64, i64* %179, align 8
  %181 = call i32 @rrdset_is_obsolete(i64 %180)
  br label %182

182:                                              ; preds = %177, %172
  %183 = load %struct.cgroup*, %struct.cgroup** %2, align 8
  %184 = getelementptr inbounds %struct.cgroup, %struct.cgroup* %183, i32 0, i32 16
  %185 = load %struct.cgroup*, %struct.cgroup** %184, align 8
  %186 = call i32 @freez(%struct.cgroup* %185)
  %187 = load %struct.cgroup*, %struct.cgroup** %2, align 8
  %188 = getelementptr inbounds %struct.cgroup, %struct.cgroup* %187, i32 0, i32 15
  %189 = load %struct.cgroup*, %struct.cgroup** %188, align 8
  %190 = call i32 @freez(%struct.cgroup* %189)
  %191 = load %struct.cgroup*, %struct.cgroup** %2, align 8
  %192 = getelementptr inbounds %struct.cgroup, %struct.cgroup* %191, i32 0, i32 14
  %193 = load %struct.cgroup*, %struct.cgroup** %192, align 8
  %194 = call i32 @freez(%struct.cgroup* %193)
  %195 = load %struct.cgroup*, %struct.cgroup** %2, align 8
  %196 = getelementptr inbounds %struct.cgroup, %struct.cgroup* %195, i32 0, i32 13
  %197 = load %struct.cgroup*, %struct.cgroup** %196, align 8
  %198 = call i32 @freez(%struct.cgroup* %197)
  %199 = load %struct.cgroup*, %struct.cgroup** %2, align 8
  %200 = getelementptr inbounds %struct.cgroup, %struct.cgroup* %199, i32 0, i32 12
  %201 = load %struct.cgroup*, %struct.cgroup** %200, align 8
  %202 = call i32 @freez(%struct.cgroup* %201)
  %203 = load %struct.cgroup*, %struct.cgroup** %2, align 8
  %204 = call i32 @free_cgroup_network_interfaces(%struct.cgroup* %203)
  %205 = load %struct.cgroup*, %struct.cgroup** %2, align 8
  %206 = getelementptr inbounds %struct.cgroup, %struct.cgroup* %205, i32 0, i32 10
  %207 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %206, i32 0, i32 1
  %208 = load %struct.cgroup*, %struct.cgroup** %207, align 8
  %209 = call i32 @freez(%struct.cgroup* %208)
  %210 = load %struct.cgroup*, %struct.cgroup** %2, align 8
  %211 = getelementptr inbounds %struct.cgroup, %struct.cgroup* %210, i32 0, i32 11
  %212 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %211, i32 0, i32 0
  %213 = load %struct.cgroup*, %struct.cgroup** %212, align 8
  %214 = call i32 @freez(%struct.cgroup* %213)
  %215 = load %struct.cgroup*, %struct.cgroup** %2, align 8
  %216 = getelementptr inbounds %struct.cgroup, %struct.cgroup* %215, i32 0, i32 10
  %217 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %216, i32 0, i32 0
  %218 = load %struct.cgroup*, %struct.cgroup** %217, align 8
  %219 = call i32 @freez(%struct.cgroup* %218)
  %220 = load %struct.cgroup*, %struct.cgroup** %2, align 8
  %221 = getelementptr inbounds %struct.cgroup, %struct.cgroup* %220, i32 0, i32 9
  %222 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %221, i32 0, i32 4
  %223 = load i32, i32* %222, align 8
  %224 = call i32 @arl_free(i32 %223)
  %225 = load %struct.cgroup*, %struct.cgroup** %2, align 8
  %226 = getelementptr inbounds %struct.cgroup, %struct.cgroup* %225, i32 0, i32 9
  %227 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %226, i32 0, i32 3
  %228 = load %struct.cgroup*, %struct.cgroup** %227, align 8
  %229 = call i32 @freez(%struct.cgroup* %228)
  %230 = load %struct.cgroup*, %struct.cgroup** %2, align 8
  %231 = getelementptr inbounds %struct.cgroup, %struct.cgroup* %230, i32 0, i32 9
  %232 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %231, i32 0, i32 2
  %233 = load %struct.cgroup*, %struct.cgroup** %232, align 8
  %234 = call i32 @freez(%struct.cgroup* %233)
  %235 = load %struct.cgroup*, %struct.cgroup** %2, align 8
  %236 = getelementptr inbounds %struct.cgroup, %struct.cgroup* %235, i32 0, i32 9
  %237 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %236, i32 0, i32 1
  %238 = load %struct.cgroup*, %struct.cgroup** %237, align 8
  %239 = call i32 @freez(%struct.cgroup* %238)
  %240 = load %struct.cgroup*, %struct.cgroup** %2, align 8
  %241 = getelementptr inbounds %struct.cgroup, %struct.cgroup* %240, i32 0, i32 9
  %242 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %241, i32 0, i32 0
  %243 = load %struct.cgroup*, %struct.cgroup** %242, align 8
  %244 = call i32 @freez(%struct.cgroup* %243)
  %245 = load %struct.cgroup*, %struct.cgroup** %2, align 8
  %246 = getelementptr inbounds %struct.cgroup, %struct.cgroup* %245, i32 0, i32 8
  %247 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %246, i32 0, i32 0
  %248 = load %struct.cgroup*, %struct.cgroup** %247, align 8
  %249 = call i32 @freez(%struct.cgroup* %248)
  %250 = load %struct.cgroup*, %struct.cgroup** %2, align 8
  %251 = getelementptr inbounds %struct.cgroup, %struct.cgroup* %250, i32 0, i32 7
  %252 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %251, i32 0, i32 0
  %253 = load %struct.cgroup*, %struct.cgroup** %252, align 8
  %254 = call i32 @freez(%struct.cgroup* %253)
  %255 = load %struct.cgroup*, %struct.cgroup** %2, align 8
  %256 = getelementptr inbounds %struct.cgroup, %struct.cgroup* %255, i32 0, i32 6
  %257 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %256, i32 0, i32 0
  %258 = load %struct.cgroup*, %struct.cgroup** %257, align 8
  %259 = call i32 @freez(%struct.cgroup* %258)
  %260 = load %struct.cgroup*, %struct.cgroup** %2, align 8
  %261 = getelementptr inbounds %struct.cgroup, %struct.cgroup* %260, i32 0, i32 5
  %262 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %261, i32 0, i32 0
  %263 = load %struct.cgroup*, %struct.cgroup** %262, align 8
  %264 = call i32 @freez(%struct.cgroup* %263)
  %265 = load %struct.cgroup*, %struct.cgroup** %2, align 8
  %266 = getelementptr inbounds %struct.cgroup, %struct.cgroup* %265, i32 0, i32 4
  %267 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %266, i32 0, i32 0
  %268 = load %struct.cgroup*, %struct.cgroup** %267, align 8
  %269 = call i32 @freez(%struct.cgroup* %268)
  %270 = load %struct.cgroup*, %struct.cgroup** %2, align 8
  %271 = getelementptr inbounds %struct.cgroup, %struct.cgroup* %270, i32 0, i32 3
  %272 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %271, i32 0, i32 0
  %273 = load %struct.cgroup*, %struct.cgroup** %272, align 8
  %274 = call i32 @freez(%struct.cgroup* %273)
  %275 = load %struct.cgroup*, %struct.cgroup** %2, align 8
  %276 = getelementptr inbounds %struct.cgroup, %struct.cgroup* %275, i32 0, i32 2
  %277 = load %struct.cgroup*, %struct.cgroup** %276, align 8
  %278 = call i32 @freez(%struct.cgroup* %277)
  %279 = load %struct.cgroup*, %struct.cgroup** %2, align 8
  %280 = getelementptr inbounds %struct.cgroup, %struct.cgroup* %279, i32 0, i32 1
  %281 = load %struct.cgroup*, %struct.cgroup** %280, align 8
  %282 = call i32 @freez(%struct.cgroup* %281)
  %283 = load %struct.cgroup*, %struct.cgroup** %2, align 8
  %284 = getelementptr inbounds %struct.cgroup, %struct.cgroup* %283, i32 0, i32 0
  %285 = load %struct.cgroup*, %struct.cgroup** %284, align 8
  %286 = call i32 @freez(%struct.cgroup* %285)
  %287 = load %struct.cgroup*, %struct.cgroup** %2, align 8
  %288 = call i32 @freez(%struct.cgroup* %287)
  %289 = load i32, i32* @cgroup_root_count, align 4
  %290 = add nsw i32 %289, -1
  store i32 %290, i32* @cgroup_root_count, align 4
  ret void
}

declare dso_local i32 @debug(i32, i8*, %struct.cgroup*, %struct.cgroup*, i8*, i8*) #1

declare dso_local i32 @rrdset_is_obsolete(i64) #1

declare dso_local i32 @freez(%struct.cgroup*) #1

declare dso_local i32 @free_cgroup_network_interfaces(%struct.cgroup*) #1

declare dso_local i32 @arl_free(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
