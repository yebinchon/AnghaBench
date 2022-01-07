; ModuleID = '/home/carl/AnghaBench/openssl/crypto/bio/extr_bss_bio.c_BIO_nwrite.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/bio/extr_bss_bio.c_BIO_nwrite.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32 }

@BIO_F_BIO_NWRITE = common dso_local global i32 0, align 4
@BIO_R_UNINITIALIZED = common dso_local global i32 0, align 4
@BIO_C_NWRITE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @BIO_nwrite(%struct.TYPE_4__* %0, i8** %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca i8**, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %5, align 8
  store i8** %1, i8*** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %17, label %13

13:                                               ; preds = %3
  %14 = load i32, i32* @BIO_F_BIO_NWRITE, align 4
  %15 = load i32, i32* @BIO_R_UNINITIALIZED, align 4
  %16 = call i32 @BIOerr(i32 %14, i32 %15)
  store i32 -2, i32* %4, align 4
  br label %33

17:                                               ; preds = %3
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %19 = load i32, i32* @BIO_C_NWRITE, align 4
  %20 = load i32, i32* %7, align 4
  %21 = load i8**, i8*** %6, align 8
  %22 = call i32 @BIO_ctrl(%struct.TYPE_4__* %18, i32 %19, i32 %20, i8** %21)
  store i32 %22, i32* %8, align 4
  %23 = load i32, i32* %8, align 4
  %24 = icmp sgt i32 %23, 0
  br i1 %24, label %25, label %31

25:                                               ; preds = %17
  %26 = load i32, i32* %8, align 4
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = add nsw i32 %29, %26
  store i32 %30, i32* %28, align 4
  br label %31

31:                                               ; preds = %25, %17
  %32 = load i32, i32* %8, align 4
  store i32 %32, i32* %4, align 4
  br label %33

33:                                               ; preds = %31, %13
  %34 = load i32, i32* %4, align 4
  ret i32 %34
}

declare dso_local i32 @BIOerr(i32, i32) #1

declare dso_local i32 @BIO_ctrl(%struct.TYPE_4__*, i32, i32, i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
