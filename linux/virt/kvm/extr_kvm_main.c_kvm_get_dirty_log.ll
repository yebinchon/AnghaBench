; ModuleID = '/home/carl/AnghaBench/linux/virt/kvm/extr_kvm_main.c_kvm_get_dirty_log.c'
source_filename = "/home/carl/AnghaBench/linux/virt/kvm/extr_kvm_main.c_kvm_get_dirty_log.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm = type { i32 }
%struct.kvm_dirty_log = type { i32, i32 }
%struct.kvm_memslots = type { i32 }
%struct.kvm_memory_slot = type { i64* }

@KVM_ADDRESS_SPACE_NUM = common dso_local global i32 0, align 4
@KVM_USER_MEM_SLOTS = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@EFAULT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kvm_get_dirty_log(%struct.kvm* %0, %struct.kvm_dirty_log* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.kvm*, align 8
  %6 = alloca %struct.kvm_dirty_log*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.kvm_memslots*, align 8
  %9 = alloca %struct.kvm_memory_slot*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  store %struct.kvm* %0, %struct.kvm** %5, align 8
  store %struct.kvm_dirty_log* %1, %struct.kvm_dirty_log** %6, align 8
  store i32* %2, i32** %7, align 8
  store i64 0, i64* %14, align 8
  %15 = load %struct.kvm_dirty_log*, %struct.kvm_dirty_log** %6, align 8
  %16 = getelementptr inbounds %struct.kvm_dirty_log, %struct.kvm_dirty_log* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = ashr i32 %17, 16
  store i32 %18, i32* %11, align 4
  %19 = load %struct.kvm_dirty_log*, %struct.kvm_dirty_log** %6, align 8
  %20 = getelementptr inbounds %struct.kvm_dirty_log, %struct.kvm_dirty_log* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %12, align 4
  %22 = load i32, i32* %11, align 4
  %23 = load i32, i32* @KVM_ADDRESS_SPACE_NUM, align 4
  %24 = icmp sge i32 %22, %23
  br i1 %24, label %29, label %25

25:                                               ; preds = %3
  %26 = load i32, i32* %12, align 4
  %27 = load i32, i32* @KVM_USER_MEM_SLOTS, align 4
  %28 = icmp sge i32 %26, %27
  br i1 %28, label %29, label %32

29:                                               ; preds = %25, %3
  %30 = load i32, i32* @EINVAL, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %4, align 4
  br label %90

32:                                               ; preds = %25
  %33 = load %struct.kvm*, %struct.kvm** %5, align 8
  %34 = load i32, i32* %11, align 4
  %35 = call %struct.kvm_memslots* @__kvm_memslots(%struct.kvm* %33, i32 %34)
  store %struct.kvm_memslots* %35, %struct.kvm_memslots** %8, align 8
  %36 = load %struct.kvm_memslots*, %struct.kvm_memslots** %8, align 8
  %37 = load i32, i32* %12, align 4
  %38 = call %struct.kvm_memory_slot* @id_to_memslot(%struct.kvm_memslots* %36, i32 %37)
  store %struct.kvm_memory_slot* %38, %struct.kvm_memory_slot** %9, align 8
  %39 = load %struct.kvm_memory_slot*, %struct.kvm_memory_slot** %9, align 8
  %40 = getelementptr inbounds %struct.kvm_memory_slot, %struct.kvm_memory_slot* %39, i32 0, i32 0
  %41 = load i64*, i64** %40, align 8
  %42 = icmp ne i64* %41, null
  br i1 %42, label %46, label %43

43:                                               ; preds = %32
  %44 = load i32, i32* @ENOENT, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %4, align 4
  br label %90

46:                                               ; preds = %32
  %47 = load %struct.kvm_memory_slot*, %struct.kvm_memory_slot** %9, align 8
  %48 = call i64 @kvm_dirty_bitmap_bytes(%struct.kvm_memory_slot* %47)
  store i64 %48, i64* %13, align 8
  store i32 0, i32* %10, align 4
  br label %49

49:                                               ; preds = %68, %46
  %50 = load i64, i64* %14, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %58, label %52

52:                                               ; preds = %49
  %53 = load i32, i32* %10, align 4
  %54 = sext i32 %53 to i64
  %55 = load i64, i64* %13, align 8
  %56 = udiv i64 %55, 8
  %57 = icmp ult i64 %54, %56
  br label %58

58:                                               ; preds = %52, %49
  %59 = phi i1 [ false, %49 ], [ %57, %52 ]
  br i1 %59, label %60, label %71

60:                                               ; preds = %58
  %61 = load %struct.kvm_memory_slot*, %struct.kvm_memory_slot** %9, align 8
  %62 = getelementptr inbounds %struct.kvm_memory_slot, %struct.kvm_memory_slot* %61, i32 0, i32 0
  %63 = load i64*, i64** %62, align 8
  %64 = load i32, i32* %10, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i64, i64* %63, i64 %65
  %67 = load i64, i64* %66, align 8
  store i64 %67, i64* %14, align 8
  br label %68

68:                                               ; preds = %60
  %69 = load i32, i32* %10, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %10, align 4
  br label %49

71:                                               ; preds = %58
  %72 = load %struct.kvm_dirty_log*, %struct.kvm_dirty_log** %6, align 8
  %73 = getelementptr inbounds %struct.kvm_dirty_log, %struct.kvm_dirty_log* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.kvm_memory_slot*, %struct.kvm_memory_slot** %9, align 8
  %76 = getelementptr inbounds %struct.kvm_memory_slot, %struct.kvm_memory_slot* %75, i32 0, i32 0
  %77 = load i64*, i64** %76, align 8
  %78 = load i64, i64* %13, align 8
  %79 = call i64 @copy_to_user(i32 %74, i64* %77, i64 %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %84

81:                                               ; preds = %71
  %82 = load i32, i32* @EFAULT, align 4
  %83 = sub nsw i32 0, %82
  store i32 %83, i32* %4, align 4
  br label %90

84:                                               ; preds = %71
  %85 = load i64, i64* %14, align 8
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %89

87:                                               ; preds = %84
  %88 = load i32*, i32** %7, align 8
  store i32 1, i32* %88, align 4
  br label %89

89:                                               ; preds = %87, %84
  store i32 0, i32* %4, align 4
  br label %90

90:                                               ; preds = %89, %81, %43, %29
  %91 = load i32, i32* %4, align 4
  ret i32 %91
}

declare dso_local %struct.kvm_memslots* @__kvm_memslots(%struct.kvm*, i32) #1

declare dso_local %struct.kvm_memory_slot* @id_to_memslot(%struct.kvm_memslots*, i32) #1

declare dso_local i64 @kvm_dirty_bitmap_bytes(%struct.kvm_memory_slot*) #1

declare dso_local i64 @copy_to_user(i32, i64*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
