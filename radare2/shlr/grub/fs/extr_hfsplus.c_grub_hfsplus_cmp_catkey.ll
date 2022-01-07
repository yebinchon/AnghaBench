; ModuleID = '/home/carl/AnghaBench/radare2/shlr/grub/fs/extr_hfsplus.c_grub_hfsplus_cmp_catkey.c'
source_filename = "/home/carl/AnghaBench/radare2/shlr/grub/fs/extr_hfsplus.c_grub_hfsplus_cmp_catkey.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.grub_hfsplus_key = type { %struct.grub_hfsplus_catkey }
%struct.grub_hfsplus_catkey = type { i32, i32*, i32 }
%struct.grub_hfsplus_key_internal = type { %struct.grub_hfsplus_catkey_internal }
%struct.grub_hfsplus_catkey_internal = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.grub_hfsplus_key*, %struct.grub_hfsplus_key_internal*)* @grub_hfsplus_cmp_catkey to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @grub_hfsplus_cmp_catkey(%struct.grub_hfsplus_key* %0, %struct.grub_hfsplus_key_internal* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.grub_hfsplus_key*, align 8
  %5 = alloca %struct.grub_hfsplus_key_internal*, align 8
  %6 = alloca %struct.grub_hfsplus_catkey*, align 8
  %7 = alloca %struct.grub_hfsplus_catkey_internal*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.grub_hfsplus_key* %0, %struct.grub_hfsplus_key** %4, align 8
  store %struct.grub_hfsplus_key_internal* %1, %struct.grub_hfsplus_key_internal** %5, align 8
  %11 = load %struct.grub_hfsplus_key*, %struct.grub_hfsplus_key** %4, align 8
  %12 = getelementptr inbounds %struct.grub_hfsplus_key, %struct.grub_hfsplus_key* %11, i32 0, i32 0
  store %struct.grub_hfsplus_catkey* %12, %struct.grub_hfsplus_catkey** %6, align 8
  %13 = load %struct.grub_hfsplus_key_internal*, %struct.grub_hfsplus_key_internal** %5, align 8
  %14 = getelementptr inbounds %struct.grub_hfsplus_key_internal, %struct.grub_hfsplus_key_internal* %13, i32 0, i32 0
  store %struct.grub_hfsplus_catkey_internal* %14, %struct.grub_hfsplus_catkey_internal** %7, align 8
  %15 = load %struct.grub_hfsplus_catkey*, %struct.grub_hfsplus_catkey** %6, align 8
  %16 = getelementptr inbounds %struct.grub_hfsplus_catkey, %struct.grub_hfsplus_catkey* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 8
  %18 = call i32 @grub_be_to_cpu32(i32 %17)
  %19 = load %struct.grub_hfsplus_catkey_internal*, %struct.grub_hfsplus_catkey_internal** %7, align 8
  %20 = getelementptr inbounds %struct.grub_hfsplus_catkey_internal, %struct.grub_hfsplus_catkey_internal* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = sub nsw i32 %18, %21
  store i32 %22, i32* %10, align 4
  %23 = load i32, i32* %10, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %2
  %26 = load i32, i32* %10, align 4
  store i32 %26, i32* %3, align 4
  br label %111

27:                                               ; preds = %2
  store i32 0, i32* %9, align 4
  br label %28

28:                                               ; preds = %50, %27
  %29 = load i32, i32* %9, align 4
  %30 = load %struct.grub_hfsplus_catkey*, %struct.grub_hfsplus_catkey** %6, align 8
  %31 = getelementptr inbounds %struct.grub_hfsplus_catkey, %struct.grub_hfsplus_catkey* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @grub_be_to_cpu16(i32 %32)
  %34 = icmp slt i32 %29, %33
  br i1 %34, label %35, label %53

35:                                               ; preds = %28
  %36 = load %struct.grub_hfsplus_catkey*, %struct.grub_hfsplus_catkey** %6, align 8
  %37 = getelementptr inbounds %struct.grub_hfsplus_catkey, %struct.grub_hfsplus_catkey* %36, i32 0, i32 1
  %38 = load i32*, i32** %37, align 8
  %39 = load i32, i32* %9, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i32, i32* %38, i64 %40
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @grub_be_to_cpu16(i32 %42)
  %44 = load %struct.grub_hfsplus_catkey*, %struct.grub_hfsplus_catkey** %6, align 8
  %45 = getelementptr inbounds %struct.grub_hfsplus_catkey, %struct.grub_hfsplus_catkey* %44, i32 0, i32 1
  %46 = load i32*, i32** %45, align 8
  %47 = load i32, i32* %9, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i32, i32* %46, i64 %48
  store i32 %43, i32* %49, align 4
  br label %50

50:                                               ; preds = %35
  %51 = load i32, i32* %9, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %9, align 4
  br label %28

53:                                               ; preds = %28
  %54 = load %struct.grub_hfsplus_catkey*, %struct.grub_hfsplus_catkey** %6, align 8
  %55 = getelementptr inbounds %struct.grub_hfsplus_catkey, %struct.grub_hfsplus_catkey* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = call i32 @grub_be_to_cpu16(i32 %56)
  %58 = add nsw i32 %57, 1
  %59 = call i8* @grub_malloc(i32 %58)
  store i8* %59, i8** %8, align 8
  %60 = load i8*, i8** %8, align 8
  %61 = bitcast i8* %60 to i32*
  %62 = load %struct.grub_hfsplus_catkey*, %struct.grub_hfsplus_catkey** %6, align 8
  %63 = getelementptr inbounds %struct.grub_hfsplus_catkey, %struct.grub_hfsplus_catkey* %62, i32 0, i32 1
  %64 = load i32*, i32** %63, align 8
  %65 = load %struct.grub_hfsplus_catkey*, %struct.grub_hfsplus_catkey** %6, align 8
  %66 = getelementptr inbounds %struct.grub_hfsplus_catkey, %struct.grub_hfsplus_catkey* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = call i32 @grub_be_to_cpu16(i32 %67)
  %69 = call i32 @grub_utf16_to_utf8(i32* %61, i32* %64, i32 %68)
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %72, label %71

71:                                               ; preds = %53
  store i32 -1, i32* %3, align 4
  br label %111

72:                                               ; preds = %53
  %73 = load i8*, i8** %8, align 8
  %74 = load %struct.grub_hfsplus_catkey_internal*, %struct.grub_hfsplus_catkey_internal** %7, align 8
  %75 = getelementptr inbounds %struct.grub_hfsplus_catkey_internal, %struct.grub_hfsplus_catkey_internal* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.grub_hfsplus_catkey*, %struct.grub_hfsplus_catkey** %6, align 8
  %78 = getelementptr inbounds %struct.grub_hfsplus_catkey, %struct.grub_hfsplus_catkey* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = call i32 @grub_be_to_cpu16(i32 %79)
  %81 = call i32 @grub_strncmp(i8* %73, i32 %76, i32 %80)
  store i32 %81, i32* %10, align 4
  %82 = load i8*, i8** %8, align 8
  %83 = call i32 @grub_free(i8* %82)
  store i32 0, i32* %9, align 4
  br label %84

84:                                               ; preds = %106, %72
  %85 = load i32, i32* %9, align 4
  %86 = load %struct.grub_hfsplus_catkey*, %struct.grub_hfsplus_catkey** %6, align 8
  %87 = getelementptr inbounds %struct.grub_hfsplus_catkey, %struct.grub_hfsplus_catkey* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = call i32 @grub_be_to_cpu16(i32 %88)
  %90 = icmp slt i32 %85, %89
  br i1 %90, label %91, label %109

91:                                               ; preds = %84
  %92 = load %struct.grub_hfsplus_catkey*, %struct.grub_hfsplus_catkey** %6, align 8
  %93 = getelementptr inbounds %struct.grub_hfsplus_catkey, %struct.grub_hfsplus_catkey* %92, i32 0, i32 1
  %94 = load i32*, i32** %93, align 8
  %95 = load i32, i32* %9, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds i32, i32* %94, i64 %96
  %98 = load i32, i32* %97, align 4
  %99 = call i32 @grub_cpu_to_be16(i32 %98)
  %100 = load %struct.grub_hfsplus_catkey*, %struct.grub_hfsplus_catkey** %6, align 8
  %101 = getelementptr inbounds %struct.grub_hfsplus_catkey, %struct.grub_hfsplus_catkey* %100, i32 0, i32 1
  %102 = load i32*, i32** %101, align 8
  %103 = load i32, i32* %9, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds i32, i32* %102, i64 %104
  store i32 %99, i32* %105, align 4
  br label %106

106:                                              ; preds = %91
  %107 = load i32, i32* %9, align 4
  %108 = add nsw i32 %107, 1
  store i32 %108, i32* %9, align 4
  br label %84

109:                                              ; preds = %84
  %110 = load i32, i32* %10, align 4
  store i32 %110, i32* %3, align 4
  br label %111

111:                                              ; preds = %109, %71, %25
  %112 = load i32, i32* %3, align 4
  ret i32 %112
}

declare dso_local i32 @grub_be_to_cpu32(i32) #1

declare dso_local i32 @grub_be_to_cpu16(i32) #1

declare dso_local i8* @grub_malloc(i32) #1

declare dso_local i32 @grub_utf16_to_utf8(i32*, i32*, i32) #1

declare dso_local i32 @grub_strncmp(i8*, i32, i32) #1

declare dso_local i32 @grub_free(i8*) #1

declare dso_local i32 @grub_cpu_to_be16(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
