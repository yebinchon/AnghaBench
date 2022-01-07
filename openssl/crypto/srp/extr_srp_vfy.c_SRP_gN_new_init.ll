; ModuleID = '/home/carl/AnghaBench/openssl/crypto/srp/extr_srp_vfy.c_SRP_gN_new_init.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/srp/extr_srp_vfy.c_SRP_gN_new_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_6__*, i32 }

@MAX_LEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_6__* (i8*)* @SRP_gN_new_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_6__* @SRP_gN_new_init(i8* %0) #0 {
  %2 = alloca %struct.TYPE_6__*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_6__*, align 8
  %8 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %9 = load i32, i32* @MAX_LEN, align 4
  %10 = zext i32 %9 to i64
  %11 = call i8* @llvm.stacksave()
  store i8* %11, i8** %4, align 8
  %12 = alloca i8, i64 %10, align 16
  store i64 %10, i64* %5, align 8
  %13 = call %struct.TYPE_6__* @OPENSSL_malloc(i32 16)
  store %struct.TYPE_6__* %13, %struct.TYPE_6__** %7, align 8
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %15 = icmp eq %struct.TYPE_6__* %14, null
  br i1 %15, label %16, label %17

16:                                               ; preds = %1
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %2, align 8
  store i32 1, i32* %8, align 4
  br label %47

17:                                               ; preds = %1
  %18 = trunc i64 %10 to i32
  %19 = load i8*, i8** %3, align 8
  %20 = call i32 @t_fromb64(i8* %12, i32 %18, i8* %19)
  store i32 %20, i32* %6, align 4
  %21 = load i32, i32* %6, align 4
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %17
  br label %44

24:                                               ; preds = %17
  %25 = load i8*, i8** %3, align 8
  %26 = call %struct.TYPE_6__* @OPENSSL_strdup(i8* %25)
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 0
  store %struct.TYPE_6__* %26, %struct.TYPE_6__** %28, align 8
  %29 = icmp eq %struct.TYPE_6__* %26, null
  br i1 %29, label %30, label %31

30:                                               ; preds = %24
  br label %44

31:                                               ; preds = %24
  %32 = load i32, i32* %6, align 4
  %33 = call i32 @BN_bin2bn(i8* %12, i32 %32, i32* null)
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 1
  store i32 %33, i32* %35, align 8
  %36 = icmp ne i32 %33, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %31
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  store %struct.TYPE_6__* %38, %struct.TYPE_6__** %2, align 8
  store i32 1, i32* %8, align 4
  br label %47

39:                                               ; preds = %31
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 0
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %41, align 8
  %43 = call i32 @OPENSSL_free(%struct.TYPE_6__* %42)
  br label %44

44:                                               ; preds = %39, %30, %23
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %46 = call i32 @OPENSSL_free(%struct.TYPE_6__* %45)
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %2, align 8
  store i32 1, i32* %8, align 4
  br label %47

47:                                               ; preds = %44, %37, %16
  %48 = load i8*, i8** %4, align 8
  call void @llvm.stackrestore(i8* %48)
  %49 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  ret %struct.TYPE_6__* %49
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local %struct.TYPE_6__* @OPENSSL_malloc(i32) #2

declare dso_local i32 @t_fromb64(i8*, i32, i8*) #2

declare dso_local %struct.TYPE_6__* @OPENSSL_strdup(i8*) #2

declare dso_local i32 @BN_bin2bn(i8*, i32, i32*) #2

declare dso_local i32 @OPENSSL_free(%struct.TYPE_6__*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
