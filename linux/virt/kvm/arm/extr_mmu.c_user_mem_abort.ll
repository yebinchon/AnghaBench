; ModuleID = '/home/carl/AnghaBench/linux/virt/kvm/arm/extr_mmu.c_user_mem_abort.c'
source_filename = "/home/carl/AnghaBench/linux/virt/kvm/arm/extr_mmu.c_user_mem_abort.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.kvm_vcpu = type { %struct.kvm*, %struct.TYPE_4__ }
%struct.kvm = type { i64, i32 }
%struct.TYPE_4__ = type { %struct.kvm_mmu_memory_cache }
%struct.kvm_mmu_memory_cache = type { i32 }
%struct.kvm_memory_slot = type { i32 }
%struct.vm_area_struct = type { i32 }

@PAGE_SHIFT = common dso_local global i32 0, align 4
@PAGE_S2 = common dso_local global i32 0, align 4
@FSC_PERM = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [37 x i8] c"Unexpected L2 read permission error\0A\00", align 1
@EFAULT = common dso_local global i32 0, align 4
@current = common dso_local global %struct.TYPE_6__* null, align 8
@.str.1 = private unnamed_addr constant [34 x i8] c"Failed to find VMA for hva 0x%lx\0A\00", align 1
@PAGE_SIZE = common dso_local global i64 0, align 8
@PMD_SIZE = common dso_local global i64 0, align 8
@PUD_SIZE = common dso_local global i64 0, align 8
@KVM_NR_MEM_OBJS = common dso_local global i32 0, align 4
@KVM_PFN_ERR_HWPOISON = common dso_local global i64 0, align 8
@PAGE_S2_DEVICE = common dso_local global i32 0, align 4
@KVM_S2PTE_FLAG_IS_IOMAP = common dso_local global i64 0, align 8
@KVM_S2_FLAG_LOGGING_ACTIVE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kvm_vcpu*, i32, %struct.kvm_memory_slot*, i64, i64)* @user_mem_abort to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @user_mem_abort(%struct.kvm_vcpu* %0, i32 %1, %struct.kvm_memory_slot* %2, i64 %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.kvm_vcpu*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.kvm_memory_slot*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  %20 = alloca %struct.kvm*, align 8
  %21 = alloca %struct.kvm_mmu_memory_cache*, align 8
  %22 = alloca %struct.vm_area_struct*, align 8
  %23 = alloca i64, align 8
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i64, align 8
  %27 = alloca i64, align 8
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %7, align 8
  store i32 %1, i32* %8, align 4
  store %struct.kvm_memory_slot* %2, %struct.kvm_memory_slot** %9, align 8
  store i64 %3, i64* %10, align 8
  store i64 %4, i64* %11, align 8
  store i32 0, i32* %15, align 4
  %31 = load i32, i32* %8, align 4
  %32 = load i32, i32* @PAGE_SHIFT, align 4
  %33 = ashr i32 %31, %32
  store i32 %33, i32* %19, align 4
  %34 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %7, align 8
  %35 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %34, i32 0, i32 0
  %36 = load %struct.kvm*, %struct.kvm** %35, align 8
  store %struct.kvm* %36, %struct.kvm** %20, align 8
  %37 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %7, align 8
  %38 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  store %struct.kvm_mmu_memory_cache* %39, %struct.kvm_mmu_memory_cache** %21, align 8
  %40 = load i32, i32* @PAGE_S2, align 4
  store i32 %40, i32* %24, align 4
  %41 = load %struct.kvm_memory_slot*, %struct.kvm_memory_slot** %9, align 8
  %42 = call i32 @memslot_is_logging(%struct.kvm_memory_slot* %41)
  store i32 %42, i32* %25, align 4
  store i64 0, i64* %27, align 8
  %43 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %7, align 8
  %44 = call i32 @kvm_is_write_fault(%struct.kvm_vcpu* %43)
  store i32 %44, i32* %13, align 4
  %45 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %7, align 8
  %46 = call i32 @kvm_vcpu_trap_is_iabt(%struct.kvm_vcpu* %45)
  store i32 %46, i32* %16, align 4
  %47 = load i32, i32* %13, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %5
  %50 = load i32, i32* %16, align 4
  %51 = icmp ne i32 %50, 0
  br label %52

52:                                               ; preds = %49, %5
  %53 = phi i1 [ false, %5 ], [ %51, %49 ]
  %54 = zext i1 %53 to i32
  %55 = call i32 @VM_BUG_ON(i32 %54)
  %56 = load i64, i64* %11, align 8
  %57 = load i64, i64* @FSC_PERM, align 8
  %58 = icmp eq i64 %56, %57
  br i1 %58, label %59, label %69

59:                                               ; preds = %52
  %60 = load i32, i32* %13, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %69, label %62

62:                                               ; preds = %59
  %63 = load i32, i32* %16, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %69, label %65

65:                                               ; preds = %62
  %66 = call i32 (i8*, ...) @kvm_err(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  %67 = load i32, i32* @EFAULT, align 4
  %68 = sub nsw i32 0, %67
  store i32 %68, i32* %6, align 4
  br label %344

69:                                               ; preds = %62, %59, %52
  %70 = load %struct.TYPE_6__*, %struct.TYPE_6__** @current, align 8
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 0
  %72 = load %struct.TYPE_5__*, %struct.TYPE_5__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %72, i32 0, i32 0
  %74 = call i32 @down_read(i32* %73)
  %75 = load %struct.TYPE_6__*, %struct.TYPE_6__** @current, align 8
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i32 0, i32 0
  %77 = load %struct.TYPE_5__*, %struct.TYPE_5__** %76, align 8
  %78 = load i64, i64* %10, align 8
  %79 = load i64, i64* %10, align 8
  %80 = add i64 %79, 1
  %81 = call %struct.vm_area_struct* @find_vma_intersection(%struct.TYPE_5__* %77, i64 %78, i64 %80)
  store %struct.vm_area_struct* %81, %struct.vm_area_struct** %22, align 8
  %82 = load %struct.vm_area_struct*, %struct.vm_area_struct** %22, align 8
  %83 = icmp ne %struct.vm_area_struct* %82, null
  %84 = xor i1 %83, true
  %85 = zext i1 %84 to i32
  %86 = call i64 @unlikely(i32 %85)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %98

88:                                               ; preds = %69
  %89 = load i64, i64* %10, align 8
  %90 = call i32 (i8*, ...) @kvm_err(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i64 %89)
  %91 = load %struct.TYPE_6__*, %struct.TYPE_6__** @current, align 8
  %92 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %91, i32 0, i32 0
  %93 = load %struct.TYPE_5__*, %struct.TYPE_5__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %93, i32 0, i32 0
  %95 = call i32 @up_read(i32* %94)
  %96 = load i32, i32* @EFAULT, align 4
  %97 = sub nsw i32 0, %96
  store i32 %97, i32* %6, align 4
  br label %344

98:                                               ; preds = %69
  %99 = load %struct.vm_area_struct*, %struct.vm_area_struct** %22, align 8
  %100 = call i64 @vma_kernel_pagesize(%struct.vm_area_struct* %99)
  store i64 %100, i64* %26, align 8
  %101 = load i32, i32* %25, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %109, label %103

103:                                              ; preds = %98
  %104 = load %struct.kvm_memory_slot*, %struct.kvm_memory_slot** %9, align 8
  %105 = load i64, i64* %10, align 8
  %106 = load i64, i64* %26, align 8
  %107 = call i64 @fault_supports_stage2_huge_mapping(%struct.kvm_memory_slot* %104, i64 %105, i64 %106)
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %111, label %109

109:                                              ; preds = %103, %98
  store i32 1, i32* %15, align 4
  %110 = load i64, i64* @PAGE_SIZE, align 8
  store i64 %110, i64* %26, align 8
  br label %111

111:                                              ; preds = %109, %103
  %112 = load i64, i64* %26, align 8
  %113 = load i64, i64* @PMD_SIZE, align 8
  %114 = icmp eq i64 %112, %113
  br i1 %114, label %123, label %115

115:                                              ; preds = %111
  %116 = load i64, i64* %26, align 8
  %117 = load i64, i64* @PUD_SIZE, align 8
  %118 = icmp eq i64 %116, %117
  br i1 %118, label %119, label %131

119:                                              ; preds = %115
  %120 = load %struct.kvm*, %struct.kvm** %20, align 8
  %121 = call i64 @kvm_stage2_has_pmd(%struct.kvm* %120)
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %131

123:                                              ; preds = %119, %111
  %124 = load i32, i32* %8, align 4
  %125 = load %struct.vm_area_struct*, %struct.vm_area_struct** %22, align 8
  %126 = call i32 @hstate_vma(%struct.vm_area_struct* %125)
  %127 = call i32 @huge_page_mask(i32 %126)
  %128 = and i32 %124, %127
  %129 = load i32, i32* @PAGE_SHIFT, align 4
  %130 = ashr i32 %128, %129
  store i32 %130, i32* %19, align 4
  br label %131

131:                                              ; preds = %123, %119, %115
  %132 = load %struct.TYPE_6__*, %struct.TYPE_6__** @current, align 8
  %133 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %132, i32 0, i32 0
  %134 = load %struct.TYPE_5__*, %struct.TYPE_5__** %133, align 8
  %135 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %134, i32 0, i32 0
  %136 = call i32 @up_read(i32* %135)
  %137 = load %struct.kvm_mmu_memory_cache*, %struct.kvm_mmu_memory_cache** %21, align 8
  %138 = load %struct.kvm*, %struct.kvm** %20, align 8
  %139 = call i32 @kvm_mmu_cache_min_pages(%struct.kvm* %138)
  %140 = load i32, i32* @KVM_NR_MEM_OBJS, align 4
  %141 = call i32 @mmu_topup_memory_cache(%struct.kvm_mmu_memory_cache* %137, i32 %139, i32 %140)
  store i32 %141, i32* %12, align 4
  %142 = load i32, i32* %12, align 4
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %146

144:                                              ; preds = %131
  %145 = load i32, i32* %12, align 4
  store i32 %145, i32* %6, align 4
  br label %344

146:                                              ; preds = %131
  %147 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %7, align 8
  %148 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %147, i32 0, i32 0
  %149 = load %struct.kvm*, %struct.kvm** %148, align 8
  %150 = getelementptr inbounds %struct.kvm, %struct.kvm* %149, i32 0, i32 0
  %151 = load i64, i64* %150, align 8
  store i64 %151, i64* %18, align 8
  %152 = call i32 (...) @smp_rmb()
  %153 = load %struct.kvm*, %struct.kvm** %20, align 8
  %154 = load i32, i32* %19, align 4
  %155 = load i32, i32* %13, align 4
  %156 = call i64 @gfn_to_pfn_prot(%struct.kvm* %153, i32 %154, i32 %155, i32* %14)
  store i64 %156, i64* %23, align 8
  %157 = load i64, i64* %23, align 8
  %158 = load i64, i64* @KVM_PFN_ERR_HWPOISON, align 8
  %159 = icmp eq i64 %157, %158
  br i1 %159, label %160, label %164

160:                                              ; preds = %146
  %161 = load i64, i64* %10, align 8
  %162 = load %struct.vm_area_struct*, %struct.vm_area_struct** %22, align 8
  %163 = call i32 @kvm_send_hwpoison_signal(i64 %161, %struct.vm_area_struct* %162)
  store i32 0, i32* %6, align 4
  br label %344

164:                                              ; preds = %146
  %165 = load i64, i64* %23, align 8
  %166 = call i64 @is_error_noslot_pfn(i64 %165)
  %167 = icmp ne i64 %166, 0
  br i1 %167, label %168, label %171

168:                                              ; preds = %164
  %169 = load i32, i32* @EFAULT, align 4
  %170 = sub nsw i32 0, %169
  store i32 %170, i32* %6, align 4
  br label %344

171:                                              ; preds = %164
  %172 = load i64, i64* %23, align 8
  %173 = call i64 @kvm_is_device_pfn(i64 %172)
  %174 = icmp ne i64 %173, 0
  br i1 %174, label %175, label %180

175:                                              ; preds = %171
  %176 = load i32, i32* @PAGE_S2_DEVICE, align 4
  store i32 %176, i32* %24, align 4
  %177 = load i64, i64* @KVM_S2PTE_FLAG_IS_IOMAP, align 8
  %178 = load i64, i64* %27, align 8
  %179 = or i64 %178, %177
  store i64 %179, i64* %27, align 8
  br label %192

180:                                              ; preds = %171
  %181 = load i32, i32* %25, align 4
  %182 = icmp ne i32 %181, 0
  br i1 %182, label %183, label %191

183:                                              ; preds = %180
  %184 = load i64, i64* @KVM_S2_FLAG_LOGGING_ACTIVE, align 8
  %185 = load i64, i64* %27, align 8
  %186 = or i64 %185, %184
  store i64 %186, i64* %27, align 8
  %187 = load i32, i32* %13, align 4
  %188 = icmp ne i32 %187, 0
  br i1 %188, label %190, label %189

189:                                              ; preds = %183
  store i32 0, i32* %14, align 4
  br label %190

190:                                              ; preds = %189, %183
  br label %191

191:                                              ; preds = %190, %180
  br label %192

192:                                              ; preds = %191, %175
  %193 = load %struct.kvm*, %struct.kvm** %20, align 8
  %194 = getelementptr inbounds %struct.kvm, %struct.kvm* %193, i32 0, i32 1
  %195 = call i32 @spin_lock(i32* %194)
  %196 = load %struct.kvm*, %struct.kvm** %20, align 8
  %197 = load i64, i64* %18, align 8
  %198 = call i64 @mmu_notifier_retry(%struct.kvm* %196, i64 %197)
  %199 = icmp ne i64 %198, 0
  br i1 %199, label %200, label %201

200:                                              ; preds = %192
  br label %335

201:                                              ; preds = %192
  %202 = load i64, i64* %26, align 8
  %203 = load i64, i64* @PAGE_SIZE, align 8
  %204 = icmp eq i64 %202, %203
  br i1 %204, label %205, label %220

205:                                              ; preds = %201
  %206 = load i32, i32* %15, align 4
  %207 = icmp ne i32 %206, 0
  br i1 %207, label %220, label %208

208:                                              ; preds = %205
  %209 = load %struct.kvm_memory_slot*, %struct.kvm_memory_slot** %9, align 8
  %210 = load i64, i64* %10, align 8
  %211 = load i64, i64* @PMD_SIZE, align 8
  %212 = call i64 @fault_supports_stage2_huge_mapping(%struct.kvm_memory_slot* %209, i64 %210, i64 %211)
  %213 = icmp ne i64 %212, 0
  br i1 %213, label %214, label %219

214:                                              ; preds = %208
  %215 = call i64 @transparent_hugepage_adjust(i64* %23, i32* %8)
  %216 = icmp ne i64 %215, 0
  br i1 %216, label %217, label %219

217:                                              ; preds = %214
  %218 = load i64, i64* @PMD_SIZE, align 8
  store i64 %218, i64* %26, align 8
  br label %219

219:                                              ; preds = %217, %214, %208
  br label %220

220:                                              ; preds = %219, %205, %201
  %221 = load i32, i32* %14, align 4
  %222 = icmp ne i32 %221, 0
  br i1 %222, label %223, label %226

223:                                              ; preds = %220
  %224 = load i64, i64* %23, align 8
  %225 = call i32 @kvm_set_pfn_dirty(i64 %224)
  br label %226

226:                                              ; preds = %223, %220
  %227 = load i64, i64* %11, align 8
  %228 = load i64, i64* @FSC_PERM, align 8
  %229 = icmp ne i64 %227, %228
  br i1 %229, label %230, label %234

230:                                              ; preds = %226
  %231 = load i64, i64* %23, align 8
  %232 = load i64, i64* %26, align 8
  %233 = call i32 @clean_dcache_guest_page(i64 %231, i64 %232)
  br label %234

234:                                              ; preds = %230, %226
  %235 = load i32, i32* %16, align 4
  %236 = icmp ne i32 %235, 0
  br i1 %236, label %237, label %241

237:                                              ; preds = %234
  %238 = load i64, i64* %23, align 8
  %239 = load i64, i64* %26, align 8
  %240 = call i32 @invalidate_icache_guest_page(i64 %238, i64 %239)
  br label %241

241:                                              ; preds = %237, %234
  %242 = load i32, i32* %16, align 4
  %243 = icmp ne i32 %242, 0
  br i1 %243, label %255, label %244

244:                                              ; preds = %241
  %245 = load i64, i64* %11, align 8
  %246 = load i64, i64* @FSC_PERM, align 8
  %247 = icmp eq i64 %245, %246
  br i1 %247, label %248, label %253

248:                                              ; preds = %244
  %249 = load %struct.kvm*, %struct.kvm** %20, align 8
  %250 = load i32, i32* %8, align 4
  %251 = call i64 @stage2_is_exec(%struct.kvm* %249, i32 %250)
  %252 = icmp ne i64 %251, 0
  br label %253

253:                                              ; preds = %248, %244
  %254 = phi i1 [ false, %244 ], [ %252, %248 ]
  br label %255

255:                                              ; preds = %253, %241
  %256 = phi i1 [ true, %241 ], [ %254, %253 ]
  %257 = zext i1 %256 to i32
  store i32 %257, i32* %17, align 4
  %258 = load i64, i64* %26, align 8
  %259 = load i64, i64* @PUD_SIZE, align 8
  %260 = icmp eq i64 %258, %259
  br i1 %260, label %261, label %283

261:                                              ; preds = %255
  %262 = load i64, i64* %23, align 8
  %263 = load i32, i32* %24, align 4
  %264 = call i32 @kvm_pfn_pud(i64 %262, i32 %263)
  store i32 %264, i32* %28, align 4
  %265 = load i32, i32* %28, align 4
  %266 = call i32 @kvm_pud_mkhuge(i32 %265)
  store i32 %266, i32* %28, align 4
  %267 = load i32, i32* %14, align 4
  %268 = icmp ne i32 %267, 0
  br i1 %268, label %269, label %272

269:                                              ; preds = %261
  %270 = load i32, i32* %28, align 4
  %271 = call i32 @kvm_s2pud_mkwrite(i32 %270)
  store i32 %271, i32* %28, align 4
  br label %272

272:                                              ; preds = %269, %261
  %273 = load i32, i32* %17, align 4
  %274 = icmp ne i32 %273, 0
  br i1 %274, label %275, label %278

275:                                              ; preds = %272
  %276 = load i32, i32* %28, align 4
  %277 = call i32 @kvm_s2pud_mkexec(i32 %276)
  store i32 %277, i32* %28, align 4
  br label %278

278:                                              ; preds = %275, %272
  %279 = load %struct.kvm*, %struct.kvm** %20, align 8
  %280 = load %struct.kvm_mmu_memory_cache*, %struct.kvm_mmu_memory_cache** %21, align 8
  %281 = load i32, i32* %8, align 4
  %282 = call i32 @stage2_set_pud_huge(%struct.kvm* %279, %struct.kvm_mmu_memory_cache* %280, i32 %281, i32* %28)
  store i32 %282, i32* %12, align 4
  br label %334

283:                                              ; preds = %255
  %284 = load i64, i64* %26, align 8
  %285 = load i64, i64* @PMD_SIZE, align 8
  %286 = icmp eq i64 %284, %285
  br i1 %286, label %287, label %309

287:                                              ; preds = %283
  %288 = load i64, i64* %23, align 8
  %289 = load i32, i32* %24, align 4
  %290 = call i32 @kvm_pfn_pmd(i64 %288, i32 %289)
  store i32 %290, i32* %29, align 4
  %291 = load i32, i32* %29, align 4
  %292 = call i32 @kvm_pmd_mkhuge(i32 %291)
  store i32 %292, i32* %29, align 4
  %293 = load i32, i32* %14, align 4
  %294 = icmp ne i32 %293, 0
  br i1 %294, label %295, label %298

295:                                              ; preds = %287
  %296 = load i32, i32* %29, align 4
  %297 = call i32 @kvm_s2pmd_mkwrite(i32 %296)
  store i32 %297, i32* %29, align 4
  br label %298

298:                                              ; preds = %295, %287
  %299 = load i32, i32* %17, align 4
  %300 = icmp ne i32 %299, 0
  br i1 %300, label %301, label %304

301:                                              ; preds = %298
  %302 = load i32, i32* %29, align 4
  %303 = call i32 @kvm_s2pmd_mkexec(i32 %302)
  store i32 %303, i32* %29, align 4
  br label %304

304:                                              ; preds = %301, %298
  %305 = load %struct.kvm*, %struct.kvm** %20, align 8
  %306 = load %struct.kvm_mmu_memory_cache*, %struct.kvm_mmu_memory_cache** %21, align 8
  %307 = load i32, i32* %8, align 4
  %308 = call i32 @stage2_set_pmd_huge(%struct.kvm* %305, %struct.kvm_mmu_memory_cache* %306, i32 %307, i32* %29)
  store i32 %308, i32* %12, align 4
  br label %333

309:                                              ; preds = %283
  %310 = load i64, i64* %23, align 8
  %311 = load i32, i32* %24, align 4
  %312 = call i32 @kvm_pfn_pte(i64 %310, i32 %311)
  store i32 %312, i32* %30, align 4
  %313 = load i32, i32* %14, align 4
  %314 = icmp ne i32 %313, 0
  br i1 %314, label %315, label %321

315:                                              ; preds = %309
  %316 = load i32, i32* %30, align 4
  %317 = call i32 @kvm_s2pte_mkwrite(i32 %316)
  store i32 %317, i32* %30, align 4
  %318 = load %struct.kvm*, %struct.kvm** %20, align 8
  %319 = load i32, i32* %19, align 4
  %320 = call i32 @mark_page_dirty(%struct.kvm* %318, i32 %319)
  br label %321

321:                                              ; preds = %315, %309
  %322 = load i32, i32* %17, align 4
  %323 = icmp ne i32 %322, 0
  br i1 %323, label %324, label %327

324:                                              ; preds = %321
  %325 = load i32, i32* %30, align 4
  %326 = call i32 @kvm_s2pte_mkexec(i32 %325)
  store i32 %326, i32* %30, align 4
  br label %327

327:                                              ; preds = %324, %321
  %328 = load %struct.kvm*, %struct.kvm** %20, align 8
  %329 = load %struct.kvm_mmu_memory_cache*, %struct.kvm_mmu_memory_cache** %21, align 8
  %330 = load i32, i32* %8, align 4
  %331 = load i64, i64* %27, align 8
  %332 = call i32 @stage2_set_pte(%struct.kvm* %328, %struct.kvm_mmu_memory_cache* %329, i32 %330, i32* %30, i64 %331)
  store i32 %332, i32* %12, align 4
  br label %333

333:                                              ; preds = %327, %304
  br label %334

334:                                              ; preds = %333, %278
  br label %335

335:                                              ; preds = %334, %200
  %336 = load %struct.kvm*, %struct.kvm** %20, align 8
  %337 = getelementptr inbounds %struct.kvm, %struct.kvm* %336, i32 0, i32 1
  %338 = call i32 @spin_unlock(i32* %337)
  %339 = load i64, i64* %23, align 8
  %340 = call i32 @kvm_set_pfn_accessed(i64 %339)
  %341 = load i64, i64* %23, align 8
  %342 = call i32 @kvm_release_pfn_clean(i64 %341)
  %343 = load i32, i32* %12, align 4
  store i32 %343, i32* %6, align 4
  br label %344

344:                                              ; preds = %335, %168, %160, %144, %88, %65
  %345 = load i32, i32* %6, align 4
  ret i32 %345
}

declare dso_local i32 @memslot_is_logging(%struct.kvm_memory_slot*) #1

declare dso_local i32 @kvm_is_write_fault(%struct.kvm_vcpu*) #1

declare dso_local i32 @kvm_vcpu_trap_is_iabt(%struct.kvm_vcpu*) #1

declare dso_local i32 @VM_BUG_ON(i32) #1

declare dso_local i32 @kvm_err(i8*, ...) #1

declare dso_local i32 @down_read(i32*) #1

declare dso_local %struct.vm_area_struct* @find_vma_intersection(%struct.TYPE_5__*, i64, i64) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @up_read(i32*) #1

declare dso_local i64 @vma_kernel_pagesize(%struct.vm_area_struct*) #1

declare dso_local i64 @fault_supports_stage2_huge_mapping(%struct.kvm_memory_slot*, i64, i64) #1

declare dso_local i64 @kvm_stage2_has_pmd(%struct.kvm*) #1

declare dso_local i32 @huge_page_mask(i32) #1

declare dso_local i32 @hstate_vma(%struct.vm_area_struct*) #1

declare dso_local i32 @mmu_topup_memory_cache(%struct.kvm_mmu_memory_cache*, i32, i32) #1

declare dso_local i32 @kvm_mmu_cache_min_pages(%struct.kvm*) #1

declare dso_local i32 @smp_rmb(...) #1

declare dso_local i64 @gfn_to_pfn_prot(%struct.kvm*, i32, i32, i32*) #1

declare dso_local i32 @kvm_send_hwpoison_signal(i64, %struct.vm_area_struct*) #1

declare dso_local i64 @is_error_noslot_pfn(i64) #1

declare dso_local i64 @kvm_is_device_pfn(i64) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i64 @mmu_notifier_retry(%struct.kvm*, i64) #1

declare dso_local i64 @transparent_hugepage_adjust(i64*, i32*) #1

declare dso_local i32 @kvm_set_pfn_dirty(i64) #1

declare dso_local i32 @clean_dcache_guest_page(i64, i64) #1

declare dso_local i32 @invalidate_icache_guest_page(i64, i64) #1

declare dso_local i64 @stage2_is_exec(%struct.kvm*, i32) #1

declare dso_local i32 @kvm_pfn_pud(i64, i32) #1

declare dso_local i32 @kvm_pud_mkhuge(i32) #1

declare dso_local i32 @kvm_s2pud_mkwrite(i32) #1

declare dso_local i32 @kvm_s2pud_mkexec(i32) #1

declare dso_local i32 @stage2_set_pud_huge(%struct.kvm*, %struct.kvm_mmu_memory_cache*, i32, i32*) #1

declare dso_local i32 @kvm_pfn_pmd(i64, i32) #1

declare dso_local i32 @kvm_pmd_mkhuge(i32) #1

declare dso_local i32 @kvm_s2pmd_mkwrite(i32) #1

declare dso_local i32 @kvm_s2pmd_mkexec(i32) #1

declare dso_local i32 @stage2_set_pmd_huge(%struct.kvm*, %struct.kvm_mmu_memory_cache*, i32, i32*) #1

declare dso_local i32 @kvm_pfn_pte(i64, i32) #1

declare dso_local i32 @kvm_s2pte_mkwrite(i32) #1

declare dso_local i32 @mark_page_dirty(%struct.kvm*, i32) #1

declare dso_local i32 @kvm_s2pte_mkexec(i32) #1

declare dso_local i32 @stage2_set_pte(%struct.kvm*, %struct.kvm_mmu_memory_cache*, i32, i32*, i64) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @kvm_set_pfn_accessed(i64) #1

declare dso_local i32 @kvm_release_pfn_clean(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
