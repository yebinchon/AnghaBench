; ModuleID = '/home/carl/AnghaBench/radare2/shlr/grub/kern/extr_disk.c_grub_disk_read_ex.c'
source_filename = "/home/carl/AnghaBench/radare2/shlr/grub/kern/extr_disk.c_grub_disk_read_ex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32 (i64, i32, i32, i32)*, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i64 (%struct.TYPE_9__*, i64, i32, i8*)* }

@GRUB_ERR_NONE = common dso_local global i64 0, align 8
@grub_errno = common dso_local global i32 0, align 4
@GRUB_DISK_SECTOR_SIZE = common dso_local global i32 0, align 4
@GRUB_DISK_SECTOR_BITS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @grub_disk_read_ex(%struct.TYPE_9__* %0, i64 %1, i32 %2, i32 %3, i8* %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_9__*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %8, align 8
  store i64 %1, i64* %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i8* %4, i8** %12, align 8
  store i32 %5, i32* %13, align 4
  %20 = load i32, i32* %13, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %29, label %22

22:                                               ; preds = %6
  %23 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %24 = load i64, i64* %9, align 8
  %25 = load i32, i32* %10, align 4
  %26 = load i32, i32* %11, align 4
  %27 = load i8*, i8** %12, align 8
  %28 = call i32 @grub_disk_read(%struct.TYPE_9__* %23, i64 %24, i32 %25, i32 %26, i8* %27)
  store i32 %28, i32* %7, align 4
  br label %175

29:                                               ; preds = %6
  %30 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %31 = load i32, i32* %11, align 4
  %32 = call i64 @grub_disk_adjust_range(%struct.TYPE_9__* %30, i64* %9, i32* %10, i32 %31)
  %33 = load i64, i64* @GRUB_ERR_NONE, align 8
  %34 = icmp ne i64 %32, %33
  br i1 %34, label %35, label %37

35:                                               ; preds = %29
  %36 = load i32, i32* @grub_errno, align 4
  store i32 %36, i32* %7, align 4
  br label %175

37:                                               ; preds = %29
  %38 = load i32, i32* %10, align 4
  store i32 %38, i32* %14, align 4
  br label %39

39:                                               ; preds = %172, %37
  %40 = load i32, i32* %11, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %173

42:                                               ; preds = %39
  %43 = load i32, i32* @GRUB_DISK_SECTOR_SIZE, align 4
  %44 = zext i32 %43 to i64
  %45 = call i8* @llvm.stacksave()
  store i8* %45, i8** %15, align 8
  %46 = alloca i8, i64 %44, align 16
  store i64 %44, i64* %16, align 8
  %47 = load i32, i32* %14, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %53, label %49

49:                                               ; preds = %42
  %50 = load i32, i32* %11, align 4
  %51 = load i32, i32* @GRUB_DISK_SECTOR_SIZE, align 4
  %52 = icmp slt i32 %50, %51
  br i1 %52, label %53, label %103

53:                                               ; preds = %49, %42
  %54 = load i32, i32* @GRUB_DISK_SECTOR_SIZE, align 4
  %55 = load i32, i32* %14, align 4
  %56 = sub i32 %54, %55
  store i32 %56, i32* %17, align 4
  %57 = load i32, i32* %17, align 4
  %58 = load i32, i32* %11, align 4
  %59 = icmp sgt i32 %57, %58
  br i1 %59, label %60, label %62

60:                                               ; preds = %53
  %61 = load i32, i32* %11, align 4
  store i32 %61, i32* %17, align 4
  br label %62

62:                                               ; preds = %60, %53
  %63 = load i8*, i8** %12, align 8
  %64 = icmp ne i8* %63, null
  br i1 %64, label %65, label %84

65:                                               ; preds = %62
  %66 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %67 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %66, i32 0, i32 2
  %68 = load %struct.TYPE_8__*, %struct.TYPE_8__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %68, i32 0, i32 0
  %70 = load i64 (%struct.TYPE_9__*, i64, i32, i8*)*, i64 (%struct.TYPE_9__*, i64, i32, i8*)** %69, align 8
  %71 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %72 = load i64, i64* %9, align 8
  %73 = call i64 %70(%struct.TYPE_9__* %71, i64 %72, i32 1, i8* %46)
  %74 = load i64, i64* @GRUB_ERR_NONE, align 8
  %75 = icmp ne i64 %73, %74
  br i1 %75, label %76, label %77

76:                                               ; preds = %65
  store i32 3, i32* %18, align 4
  br label %169

77:                                               ; preds = %65
  %78 = load i8*, i8** %12, align 8
  %79 = load i32, i32* %14, align 4
  %80 = zext i32 %79 to i64
  %81 = getelementptr inbounds i8, i8* %46, i64 %80
  %82 = load i32, i32* %17, align 4
  %83 = call i32 @grub_memcpy(i8* %78, i8* %81, i32 %82)
  br label %84

84:                                               ; preds = %77, %62
  %85 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %86 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %85, i32 0, i32 1
  %87 = load i32 (i64, i32, i32, i32)*, i32 (i64, i32, i32, i32)** %86, align 8
  %88 = icmp ne i32 (i64, i32, i32, i32)* %87, null
  br i1 %88, label %89, label %100

89:                                               ; preds = %84
  %90 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %91 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %90, i32 0, i32 1
  %92 = load i32 (i64, i32, i32, i32)*, i32 (i64, i32, i32, i32)** %91, align 8
  %93 = load i64, i64* %9, align 8
  %94 = load i32, i32* %14, align 4
  %95 = load i32, i32* %17, align 4
  %96 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %97 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = call i32 %92(i64 %93, i32 %94, i32 %95, i32 %98)
  br label %100

100:                                              ; preds = %89, %84
  %101 = load i64, i64* %9, align 8
  %102 = add nsw i64 %101, 1
  store i64 %102, i64* %9, align 8
  store i32 0, i32* %14, align 4
  br label %157

103:                                              ; preds = %49
  %104 = load i32, i32* %11, align 4
  %105 = load i32, i32* @GRUB_DISK_SECTOR_SIZE, align 4
  %106 = sub nsw i32 %105, 1
  %107 = xor i32 %106, -1
  %108 = and i32 %104, %107
  store i32 %108, i32* %17, align 4
  %109 = load i32, i32* %11, align 4
  %110 = load i32, i32* @GRUB_DISK_SECTOR_BITS, align 4
  %111 = ashr i32 %109, %110
  store i32 %111, i32* %19, align 4
  %112 = load i8*, i8** %12, align 8
  %113 = icmp ne i8* %112, null
  br i1 %113, label %114, label %128

114:                                              ; preds = %103
  %115 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %116 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %115, i32 0, i32 2
  %117 = load %struct.TYPE_8__*, %struct.TYPE_8__** %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %117, i32 0, i32 0
  %119 = load i64 (%struct.TYPE_9__*, i64, i32, i8*)*, i64 (%struct.TYPE_9__*, i64, i32, i8*)** %118, align 8
  %120 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %121 = load i64, i64* %9, align 8
  %122 = load i32, i32* %19, align 4
  %123 = load i8*, i8** %12, align 8
  %124 = call i64 %119(%struct.TYPE_9__* %120, i64 %121, i32 %122, i8* %123)
  %125 = load i64, i64* @GRUB_ERR_NONE, align 8
  %126 = icmp ne i64 %124, %125
  br i1 %126, label %127, label %128

127:                                              ; preds = %114
  store i32 3, i32* %18, align 4
  br label %169

128:                                              ; preds = %114, %103
  %129 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %130 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %129, i32 0, i32 1
  %131 = load i32 (i64, i32, i32, i32)*, i32 (i64, i32, i32, i32)** %130, align 8
  %132 = icmp ne i32 (i64, i32, i32, i32)* %131, null
  br i1 %132, label %133, label %151

133:                                              ; preds = %128
  br label %134

134:                                              ; preds = %137, %133
  %135 = load i32, i32* %19, align 4
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %150

137:                                              ; preds = %134
  %138 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %139 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %138, i32 0, i32 1
  %140 = load i32 (i64, i32, i32, i32)*, i32 (i64, i32, i32, i32)** %139, align 8
  %141 = load i64, i64* %9, align 8
  %142 = add nsw i64 %141, 1
  store i64 %142, i64* %9, align 8
  %143 = load i32, i32* @GRUB_DISK_SECTOR_SIZE, align 4
  %144 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %145 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 8
  %147 = call i32 %140(i64 %141, i32 0, i32 %143, i32 %146)
  %148 = load i32, i32* %19, align 4
  %149 = add nsw i32 %148, -1
  store i32 %149, i32* %19, align 4
  br label %134

150:                                              ; preds = %134
  br label %156

151:                                              ; preds = %128
  %152 = load i32, i32* %19, align 4
  %153 = sext i32 %152 to i64
  %154 = load i64, i64* %9, align 8
  %155 = add nsw i64 %154, %153
  store i64 %155, i64* %9, align 8
  br label %156

156:                                              ; preds = %151, %150
  br label %157

157:                                              ; preds = %156, %100
  %158 = load i8*, i8** %12, align 8
  %159 = icmp ne i8* %158, null
  br i1 %159, label %160, label %165

160:                                              ; preds = %157
  %161 = load i8*, i8** %12, align 8
  %162 = load i32, i32* %17, align 4
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds i8, i8* %161, i64 %163
  store i8* %164, i8** %12, align 8
  br label %165

165:                                              ; preds = %160, %157
  %166 = load i32, i32* %17, align 4
  %167 = load i32, i32* %11, align 4
  %168 = sub nsw i32 %167, %166
  store i32 %168, i32* %11, align 4
  store i32 0, i32* %18, align 4
  br label %169

169:                                              ; preds = %165, %127, %76
  %170 = load i8*, i8** %15, align 8
  call void @llvm.stackrestore(i8* %170)
  %171 = load i32, i32* %18, align 4
  switch i32 %171, label %177 [
    i32 0, label %172
    i32 3, label %173
  ]

172:                                              ; preds = %169
  br label %39

173:                                              ; preds = %169, %39
  %174 = load i32, i32* @grub_errno, align 4
  store i32 %174, i32* %7, align 4
  br label %175

175:                                              ; preds = %173, %35, %22
  %176 = load i32, i32* %7, align 4
  ret i32 %176

177:                                              ; preds = %169
  unreachable
}

declare dso_local i32 @grub_disk_read(%struct.TYPE_9__*, i64, i32, i32, i8*) #1

declare dso_local i64 @grub_disk_adjust_range(%struct.TYPE_9__*, i64*, i32*, i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @grub_memcpy(i8*, i8*, i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
