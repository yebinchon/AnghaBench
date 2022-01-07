; ModuleID = '/home/carl/AnghaBench/mimikatz/mimilib/sekurlsadbg/extr_kwindbg.c_kuhl_m_sekurlsa_genericKeyOutput.c'
source_filename = "/home/carl/AnghaBench/mimikatz/mimilib/sekurlsadbg/extr_kwindbg.c_kuhl_m_sekurlsa_genericKeyOutput.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32 }

@.str = private unnamed_addr constant [17 x i8] c"\0A\09 * NTLM     : \00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"\0A\09 * SHA1     : \00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"\0A\09 * RootKey  : \00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"\0A\09 * DPAPI    : \00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"\0A\09 * %08x : \00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kuhl_m_sekurlsa_genericKeyOutput(%struct.TYPE_3__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_3__*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  %4 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %5 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  switch i32 %6, label %15 [
    i32 130, label %7
    i32 128, label %9
    i32 129, label %11
    i32 131, label %13
  ]

7:                                                ; preds = %1
  %8 = call i32 (i8*, ...) @dprintf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  br label %20

9:                                                ; preds = %1
  %10 = call i32 (i8*, ...) @dprintf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  br label %20

11:                                               ; preds = %1
  %12 = call i32 (i8*, ...) @dprintf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0))
  br label %20

13:                                               ; preds = %1
  %14 = call i32 (i8*, ...) @dprintf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0))
  br label %20

15:                                               ; preds = %1
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 (i8*, ...) @dprintf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0), i32 %18)
  br label %20

20:                                               ; preds = %15, %13, %11, %9, %7
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @kull_m_string_dprintf_hex(i32 %23, i32 %26, i32 0)
  %28 = load i32, i32* %2, align 4
  ret i32 %28
}

declare dso_local i32 @dprintf(i8*, ...) #1

declare dso_local i32 @kull_m_string_dprintf_hex(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
