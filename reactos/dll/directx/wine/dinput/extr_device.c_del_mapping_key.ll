; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/dinput/extr_device.c_del_mapping_key.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/dinput/extr_device.c_del_mapping_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@del_mapping_key.subkey = internal constant [44 x i8] c"Software\\Wine\\DirectInput\\Mappings\\%s\\%s\\%s\00", align 16
@HKEY_CURRENT_USER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8*, i8*)* @del_mapping_key to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @del_mapping_key(i8* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  %8 = call i32 @lstrlenW(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @del_mapping_key.subkey, i64 0, i64 0))
  %9 = load i8*, i8** %5, align 8
  %10 = call i32 @strlenW(i8* %9)
  %11 = add nsw i32 %8, %10
  %12 = load i8*, i8** %4, align 8
  %13 = call i32 @strlenW(i8* %12)
  %14 = add nsw i32 %11, %13
  %15 = load i8*, i8** %6, align 8
  %16 = call i32 @strlenW(i8* %15)
  %17 = add nsw i32 %14, %16
  %18 = sext i32 %17 to i64
  %19 = mul i64 1, %18
  %20 = trunc i64 %19 to i32
  %21 = call i8* @heap_alloc(i32 %20)
  store i8* %21, i8** %7, align 8
  %22 = load i8*, i8** %7, align 8
  %23 = load i8*, i8** %5, align 8
  %24 = load i8*, i8** %4, align 8
  %25 = load i8*, i8** %6, align 8
  %26 = call i32 @sprintfW(i8* %22, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @del_mapping_key.subkey, i64 0, i64 0), i8* %23, i8* %24, i8* %25)
  %27 = load i32, i32* @HKEY_CURRENT_USER, align 4
  %28 = load i8*, i8** %7, align 8
  %29 = call i32 @RegDeleteKeyW(i32 %27, i8* %28)
  %30 = load i8*, i8** %7, align 8
  %31 = call i32 @heap_free(i8* %30)
  ret void
}

declare dso_local i8* @heap_alloc(i32) #1

declare dso_local i32 @lstrlenW(i8*) #1

declare dso_local i32 @strlenW(i8*) #1

declare dso_local i32 @sprintfW(i8*, i8*, i8*, i8*, i8*) #1

declare dso_local i32 @RegDeleteKeyW(i32, i8*) #1

declare dso_local i32 @heap_free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
