; ModuleID = '/home/carl/AnghaBench/radare2/shlr/grub/kern/extr_disk.c_grub_disk_write.c'
source_filename = "/home/carl/AnghaBench/radare2/shlr/grub/kern/extr_disk.c_grub_disk_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, %struct.TYPE_8__*, i8*, i32 }
%struct.TYPE_8__ = type { i64 (%struct.TYPE_9__*, i32, i32, i8*)*, i32 }

@.str = private unnamed_addr constant [5 x i8] c"disk\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"Writing `%s'...\0A\00", align 1
@GRUB_ERR_NONE = common dso_local global i64 0, align 8
@grub_errno = common dso_local global i32 0, align 4
@GRUB_DISK_SECTOR_SIZE = common dso_local global i32 0, align 4
@GRUB_DISK_SECTOR_BITS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @grub_disk_write(%struct.TYPE_9__* %0, i32 %1, i32 %2, i32 %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_9__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i8* %4, i8** %11, align 8
  %20 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %21 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %20, i32 0, i32 3
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @grub_dprintf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32 %22)
  %24 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %25 = load i32, i32* %10, align 4
  %26 = call i64 @grub_disk_adjust_range(%struct.TYPE_9__* %24, i32* %8, i32* %9, i32 %25)
  %27 = load i64, i64* @GRUB_ERR_NONE, align 8
  %28 = icmp ne i64 %26, %27
  br i1 %28, label %29, label %31

29:                                               ; preds = %5
  %30 = load i32, i32* @grub_errno, align 4
  store i32 %30, i32* %6, align 4
  br label %171

31:                                               ; preds = %5
  %32 = load i32, i32* %9, align 4
  store i32 %32, i32* %12, align 4
  br label %33

33:                                               ; preds = %167, %31
  %34 = load i32, i32* %10, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %168

36:                                               ; preds = %33
  %37 = load i32, i32* %12, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %46, label %39

39:                                               ; preds = %36
  %40 = load i32, i32* %10, align 4
  %41 = load i32, i32* @GRUB_DISK_SECTOR_SIZE, align 4
  %42 = icmp slt i32 %40, %41
  br i1 %42, label %43, label %120

43:                                               ; preds = %39
  %44 = load i32, i32* %10, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %120

46:                                               ; preds = %43, %36
  %47 = load i32, i32* @GRUB_DISK_SECTOR_SIZE, align 4
  %48 = zext i32 %47 to i64
  %49 = call i8* @llvm.stacksave()
  store i8* %49, i8** %13, align 8
  %50 = alloca i8, i64 %48, align 16
  store i64 %48, i64* %14, align 8
  %51 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %52 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %51, i32 0, i32 2
  %53 = load i8*, i8** %52, align 8
  store i8* %53, i8** %16, align 8
  %54 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %55 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %54, i32 0, i32 2
  store i8* null, i8** %55, align 8
  %56 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %57 = load i32, i32* %8, align 4
  %58 = load i32, i32* @GRUB_DISK_SECTOR_SIZE, align 4
  %59 = call i64 @grub_disk_read(%struct.TYPE_9__* %56, i32 %57, i32 0, i32 %58, i8* %50)
  %60 = load i64, i64* @GRUB_ERR_NONE, align 8
  %61 = icmp ne i64 %59, %60
  br i1 %61, label %62, label %66

62:                                               ; preds = %46
  %63 = load i8*, i8** %16, align 8
  %64 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %65 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %64, i32 0, i32 2
  store i8* %63, i8** %65, align 8
  store i32 4, i32* %17, align 4
  br label %116

66:                                               ; preds = %46
  %67 = load i8*, i8** %16, align 8
  %68 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %69 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %68, i32 0, i32 2
  store i8* %67, i8** %69, align 8
  %70 = load i32, i32* @GRUB_DISK_SECTOR_SIZE, align 4
  %71 = load i32, i32* %12, align 4
  %72 = sub i32 %70, %71
  store i32 %72, i32* %15, align 4
  %73 = load i32, i32* %15, align 4
  %74 = load i32, i32* %10, align 4
  %75 = icmp sgt i32 %73, %74
  br i1 %75, label %76, label %78

76:                                               ; preds = %66
  %77 = load i32, i32* %10, align 4
  store i32 %77, i32* %15, align 4
  br label %78

78:                                               ; preds = %76, %66
  %79 = load i32, i32* %12, align 4
  %80 = zext i32 %79 to i64
  %81 = getelementptr inbounds i8, i8* %50, i64 %80
  %82 = load i8*, i8** %11, align 8
  %83 = load i32, i32* %15, align 4
  %84 = call i32 @grub_memcpy(i8* %81, i8* %82, i32 %83)
  %85 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %86 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %85, i32 0, i32 1
  %87 = load %struct.TYPE_8__*, %struct.TYPE_8__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 8
  %90 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %91 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = load i32, i32* %8, align 4
  %94 = call i32 @grub_disk_cache_invalidate(i32 %89, i32 %92, i32 %93)
  %95 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %96 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %95, i32 0, i32 1
  %97 = load %struct.TYPE_8__*, %struct.TYPE_8__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %97, i32 0, i32 0
  %99 = load i64 (%struct.TYPE_9__*, i32, i32, i8*)*, i64 (%struct.TYPE_9__*, i32, i32, i8*)** %98, align 8
  %100 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %101 = load i32, i32* %8, align 4
  %102 = call i64 %99(%struct.TYPE_9__* %100, i32 %101, i32 1, i8* %50)
  %103 = load i64, i64* @GRUB_ERR_NONE, align 8
  %104 = icmp ne i64 %102, %103
  br i1 %104, label %105, label %106

105:                                              ; preds = %78
  store i32 4, i32* %17, align 4
  br label %116

106:                                              ; preds = %78
  %107 = load i32, i32* %8, align 4
  %108 = add nsw i32 %107, 1
  store i32 %108, i32* %8, align 4
  %109 = load i8*, i8** %11, align 8
  %110 = load i32, i32* %15, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds i8, i8* %109, i64 %111
  store i8* %112, i8** %11, align 8
  %113 = load i32, i32* %15, align 4
  %114 = load i32, i32* %10, align 4
  %115 = sub nsw i32 %114, %113
  store i32 %115, i32* %10, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %17, align 4
  br label %116

116:                                              ; preds = %105, %62, %106
  %117 = load i8*, i8** %13, align 8
  call void @llvm.stackrestore(i8* %117)
  %118 = load i32, i32* %17, align 4
  switch i32 %118, label %173 [
    i32 0, label %119
    i32 4, label %169
  ]

119:                                              ; preds = %116
  br label %167

120:                                              ; preds = %43, %39
  %121 = load i32, i32* %10, align 4
  %122 = load i32, i32* @GRUB_DISK_SECTOR_SIZE, align 4
  %123 = sub nsw i32 %122, 1
  %124 = xor i32 %123, -1
  %125 = and i32 %121, %124
  store i32 %125, i32* %18, align 4
  %126 = load i32, i32* %10, align 4
  %127 = load i32, i32* @GRUB_DISK_SECTOR_BITS, align 4
  %128 = ashr i32 %126, %127
  store i32 %128, i32* %19, align 4
  %129 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %130 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %129, i32 0, i32 1
  %131 = load %struct.TYPE_8__*, %struct.TYPE_8__** %130, align 8
  %132 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %131, i32 0, i32 0
  %133 = load i64 (%struct.TYPE_9__*, i32, i32, i8*)*, i64 (%struct.TYPE_9__*, i32, i32, i8*)** %132, align 8
  %134 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %135 = load i32, i32* %8, align 4
  %136 = load i32, i32* %19, align 4
  %137 = load i8*, i8** %11, align 8
  %138 = call i64 %133(%struct.TYPE_9__* %134, i32 %135, i32 %136, i8* %137)
  %139 = load i64, i64* @GRUB_ERR_NONE, align 8
  %140 = icmp ne i64 %138, %139
  br i1 %140, label %141, label %142

141:                                              ; preds = %120
  br label %169

142:                                              ; preds = %120
  br label %143

143:                                              ; preds = %147, %142
  %144 = load i32, i32* %19, align 4
  %145 = add nsw i32 %144, -1
  store i32 %145, i32* %19, align 4
  %146 = icmp ne i32 %144, 0
  br i1 %146, label %147, label %159

147:                                              ; preds = %143
  %148 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %149 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %148, i32 0, i32 1
  %150 = load %struct.TYPE_8__*, %struct.TYPE_8__** %149, align 8
  %151 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %150, i32 0, i32 1
  %152 = load i32, i32* %151, align 8
  %153 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %154 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 8
  %156 = load i32, i32* %8, align 4
  %157 = add nsw i32 %156, 1
  store i32 %157, i32* %8, align 4
  %158 = call i32 @grub_disk_cache_invalidate(i32 %152, i32 %155, i32 %156)
  br label %143

159:                                              ; preds = %143
  %160 = load i8*, i8** %11, align 8
  %161 = load i32, i32* %18, align 4
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds i8, i8* %160, i64 %162
  store i8* %163, i8** %11, align 8
  %164 = load i32, i32* %18, align 4
  %165 = load i32, i32* %10, align 4
  %166 = sub nsw i32 %165, %164
  store i32 %166, i32* %10, align 4
  br label %167

167:                                              ; preds = %159, %119
  br label %33

168:                                              ; preds = %33
  br label %169

169:                                              ; preds = %168, %141, %116
  %170 = load i32, i32* @grub_errno, align 4
  store i32 %170, i32* %6, align 4
  br label %171

171:                                              ; preds = %169, %29
  %172 = load i32, i32* %6, align 4
  ret i32 %172

173:                                              ; preds = %116
  unreachable
}

declare dso_local i32 @grub_dprintf(i8*, i8*, i32) #1

declare dso_local i64 @grub_disk_adjust_range(%struct.TYPE_9__*, i32*, i32*, i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i64 @grub_disk_read(%struct.TYPE_9__*, i32, i32, i32, i8*) #1

declare dso_local i32 @grub_memcpy(i8*, i8*, i32) #1

declare dso_local i32 @grub_disk_cache_invalidate(i32, i32, i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
