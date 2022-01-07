; ModuleID = '/home/carl/AnghaBench/openssl/crypto/bio/extr_bio_meth.c_BIO_meth_new.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/bio/extr_bio_meth.c_BIO_meth_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32* }

@BIO_F_BIO_METH_NEW = common dso_local global i32 0, align 4
@ERR_R_MALLOC_FAILURE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_5__* @BIO_meth_new(i32 %0, i8* %1) #0 {
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_5__*, align 8
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %7 = call %struct.TYPE_5__* @OPENSSL_zalloc(i32 16)
  store %struct.TYPE_5__* %7, %struct.TYPE_5__** %6, align 8
  %8 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %9 = icmp eq %struct.TYPE_5__* %8, null
  br i1 %9, label %16, label %10

10:                                               ; preds = %2
  %11 = load i8*, i8** %5, align 8
  %12 = call i32* @OPENSSL_strdup(i8* %11)
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 1
  store i32* %12, i32** %14, align 8
  %15 = icmp eq i32* %12, null
  br i1 %15, label %16, label %22

16:                                               ; preds = %10, %2
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %18 = call i32 @OPENSSL_free(%struct.TYPE_5__* %17)
  %19 = load i32, i32* @BIO_F_BIO_METH_NEW, align 4
  %20 = load i32, i32* @ERR_R_MALLOC_FAILURE, align 4
  %21 = call i32 @BIOerr(i32 %19, i32 %20)
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %3, align 8
  br label %27

22:                                               ; preds = %10
  %23 = load i32, i32* %4, align 4
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 0
  store i32 %23, i32* %25, align 8
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  store %struct.TYPE_5__* %26, %struct.TYPE_5__** %3, align 8
  br label %27

27:                                               ; preds = %22, %16
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  ret %struct.TYPE_5__* %28
}

declare dso_local %struct.TYPE_5__* @OPENSSL_zalloc(i32) #1

declare dso_local i32* @OPENSSL_strdup(i8*) #1

declare dso_local i32 @OPENSSL_free(%struct.TYPE_5__*) #1

declare dso_local i32 @BIOerr(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
