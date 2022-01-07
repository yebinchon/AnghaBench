; ModuleID = '/home/carl/AnghaBench/nanomsg/src/core/extr_global.c_nn_cmsg_nxthdr_.c'
source_filename = "/home/carl/AnghaBench/nanomsg/src/core/extr_global.c_nn_cmsg_nxthdr_.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nn_msghdr = type { i64, i64 }
%struct.nn_cmsghdr = type { i32 }

@NN_MSG = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.nn_cmsghdr* @nn_cmsg_nxthdr_(%struct.nn_msghdr* %0, %struct.nn_cmsghdr* %1) #0 {
  %3 = alloca %struct.nn_cmsghdr*, align 8
  %4 = alloca %struct.nn_msghdr*, align 8
  %5 = alloca %struct.nn_cmsghdr*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.nn_cmsghdr*, align 8
  %9 = alloca i64, align 8
  store %struct.nn_msghdr* %0, %struct.nn_msghdr** %4, align 8
  store %struct.nn_cmsghdr* %1, %struct.nn_cmsghdr** %5, align 8
  %10 = load %struct.nn_msghdr*, %struct.nn_msghdr** %4, align 8
  %11 = icmp eq %struct.nn_msghdr* %10, null
  %12 = zext i1 %11 to i32
  %13 = call i64 @nn_slow(i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %2
  store %struct.nn_cmsghdr* null, %struct.nn_cmsghdr** %3, align 8
  br label %85

16:                                               ; preds = %2
  %17 = load %struct.nn_msghdr*, %struct.nn_msghdr** %4, align 8
  %18 = getelementptr inbounds %struct.nn_msghdr, %struct.nn_msghdr* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @NN_MSG, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %30

22:                                               ; preds = %16
  %23 = load %struct.nn_msghdr*, %struct.nn_msghdr** %4, align 8
  %24 = getelementptr inbounds %struct.nn_msghdr, %struct.nn_msghdr* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = inttoptr i64 %25 to i8**
  %27 = load i8*, i8** %26, align 8
  store i8* %27, i8** %6, align 8
  %28 = load i8*, i8** %6, align 8
  %29 = call i64 @nn_chunk_size(i8* %28)
  store i64 %29, i64* %7, align 8
  br label %38

30:                                               ; preds = %16
  %31 = load %struct.nn_msghdr*, %struct.nn_msghdr** %4, align 8
  %32 = getelementptr inbounds %struct.nn_msghdr, %struct.nn_msghdr* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = inttoptr i64 %33 to i8*
  store i8* %34, i8** %6, align 8
  %35 = load %struct.nn_msghdr*, %struct.nn_msghdr** %4, align 8
  %36 = getelementptr inbounds %struct.nn_msghdr, %struct.nn_msghdr* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  store i64 %37, i64* %7, align 8
  br label %38

38:                                               ; preds = %30, %22
  %39 = load i64, i64* %7, align 8
  %40 = call i64 @NN_CMSG_SPACE(i32 0)
  %41 = icmp ult i64 %39, %40
  %42 = zext i1 %41 to i32
  %43 = call i64 @nn_slow(i32 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %38
  store %struct.nn_cmsghdr* null, %struct.nn_cmsghdr** %3, align 8
  br label %85

46:                                               ; preds = %38
  %47 = load %struct.nn_cmsghdr*, %struct.nn_cmsghdr** %5, align 8
  %48 = icmp ne %struct.nn_cmsghdr* %47, null
  br i1 %48, label %52, label %49

49:                                               ; preds = %46
  %50 = load i8*, i8** %6, align 8
  %51 = bitcast i8* %50 to %struct.nn_cmsghdr*
  store %struct.nn_cmsghdr* %51, %struct.nn_cmsghdr** %8, align 8
  br label %61

52:                                               ; preds = %46
  %53 = load %struct.nn_cmsghdr*, %struct.nn_cmsghdr** %5, align 8
  %54 = bitcast %struct.nn_cmsghdr* %53 to i8*
  %55 = load %struct.nn_cmsghdr*, %struct.nn_cmsghdr** %5, align 8
  %56 = getelementptr inbounds %struct.nn_cmsghdr, %struct.nn_cmsghdr* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = call i64 @NN_CMSG_ALIGN_(i32 %57)
  %59 = getelementptr inbounds i8, i8* %54, i64 %58
  %60 = bitcast i8* %59 to %struct.nn_cmsghdr*
  store %struct.nn_cmsghdr* %60, %struct.nn_cmsghdr** %8, align 8
  br label %61

61:                                               ; preds = %52, %49
  %62 = load %struct.nn_cmsghdr*, %struct.nn_cmsghdr** %8, align 8
  %63 = bitcast %struct.nn_cmsghdr* %62 to i8*
  %64 = load i8*, i8** %6, align 8
  %65 = ptrtoint i8* %63 to i64
  %66 = ptrtoint i8* %64 to i64
  %67 = sub i64 %65, %66
  store i64 %67, i64* %9, align 8
  %68 = load i64, i64* %9, align 8
  %69 = call i64 @NN_CMSG_SPACE(i32 0)
  %70 = add i64 %68, %69
  %71 = load i64, i64* %7, align 8
  %72 = icmp ugt i64 %70, %71
  br i1 %72, label %82, label %73

73:                                               ; preds = %61
  %74 = load i64, i64* %9, align 8
  %75 = load %struct.nn_cmsghdr*, %struct.nn_cmsghdr** %8, align 8
  %76 = getelementptr inbounds %struct.nn_cmsghdr, %struct.nn_cmsghdr* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = call i64 @NN_CMSG_ALIGN_(i32 %77)
  %79 = add i64 %74, %78
  %80 = load i64, i64* %7, align 8
  %81 = icmp ugt i64 %79, %80
  br i1 %81, label %82, label %83

82:                                               ; preds = %73, %61
  store %struct.nn_cmsghdr* null, %struct.nn_cmsghdr** %3, align 8
  br label %85

83:                                               ; preds = %73
  %84 = load %struct.nn_cmsghdr*, %struct.nn_cmsghdr** %8, align 8
  store %struct.nn_cmsghdr* %84, %struct.nn_cmsghdr** %3, align 8
  br label %85

85:                                               ; preds = %83, %82, %45, %15
  %86 = load %struct.nn_cmsghdr*, %struct.nn_cmsghdr** %3, align 8
  ret %struct.nn_cmsghdr* %86
}

declare dso_local i64 @nn_slow(i32) #1

declare dso_local i64 @nn_chunk_size(i8*) #1

declare dso_local i64 @NN_CMSG_SPACE(i32) #1

declare dso_local i64 @NN_CMSG_ALIGN_(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
