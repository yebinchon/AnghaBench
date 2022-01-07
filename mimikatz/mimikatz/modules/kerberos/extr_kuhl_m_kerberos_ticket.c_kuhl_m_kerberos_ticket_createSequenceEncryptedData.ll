; ModuleID = '/home/carl/AnghaBench/mimikatz/mimikatz/modules/kerberos/extr_kuhl_m_kerberos_ticket.c_kuhl_m_kerberos_ticket_createSequenceEncryptedData.c'
source_filename = "/home/carl/AnghaBench/mimikatz/mimikatz/modules/kerberos/extr_kuhl_m_kerberos_ticket.c_kuhl_m_kerberos_ticket_createSequenceEncryptedData.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [6 x i8] c"{t{i}\00", align 1
@ID_CTX_ENCRYPTEDDATA_ETYPE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"t{i}\00", align 1
@ID_CTX_ENCRYPTEDDATA_KVNO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [6 x i8] c"t{o}}\00", align 1
@ID_CTX_ENCRYPTEDDATA_CIPHER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @kuhl_m_kerberos_ticket_createSequenceEncryptedData(i32* %0, i64 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i64 %1, i64* %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %11 = load i32*, i32** %6, align 8
  %12 = load i32, i32* @ID_CTX_ENCRYPTEDDATA_ETYPE, align 4
  %13 = call i32 @MAKE_CTX_TAG(i32 %12)
  %14 = load i64, i64* %7, align 8
  %15 = trunc i64 %14 to i32
  %16 = call i32 (i32*, i8*, i32, i32, ...) @ber_printf(i32* %11, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %13, i32 %15)
  %17 = load i64, i64* %7, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %25

19:                                               ; preds = %5
  %20 = load i32*, i32** %6, align 8
  %21 = load i32, i32* @ID_CTX_ENCRYPTEDDATA_KVNO, align 4
  %22 = call i32 @MAKE_CTX_TAG(i32 %21)
  %23 = load i32, i32* %8, align 4
  %24 = call i32 (i32*, i8*, i32, i32, ...) @ber_printf(i32* %20, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 %22, i32 %23)
  br label %25

25:                                               ; preds = %19, %5
  %26 = load i32*, i32** %6, align 8
  %27 = load i32, i32* @ID_CTX_ENCRYPTEDDATA_CIPHER, align 4
  %28 = call i32 @MAKE_CTX_TAG(i32 %27)
  %29 = load i32, i32* %9, align 4
  %30 = load i32, i32* %10, align 4
  %31 = call i32 (i32*, i8*, i32, i32, ...) @ber_printf(i32* %26, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32 %28, i32 %29, i32 %30)
  ret void
}

declare dso_local i32 @ber_printf(i32*, i8*, i32, i32, ...) #1

declare dso_local i32 @MAKE_CTX_TAG(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
