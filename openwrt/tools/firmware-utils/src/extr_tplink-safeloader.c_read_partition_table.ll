; ModuleID = '/home/carl/AnghaBench/openwrt/tools/firmware-utils/src/extr_tplink-safeloader.c_read_partition_table.c'
source_filename = "/home/carl/AnghaBench/openwrt/tools/firmware-utils/src/extr_tplink-safeloader.c_read_partition_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.flash_partition_entry = type { i32 }

@.str = private unnamed_addr constant [9 x i8] c"fwup-ptn\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"partition\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"Invalid partition table\00", align 1
@SEEK_SET = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [29 x i8] c"Can not seek in the firmware\00", align 1
@.str.4 = private unnamed_addr constant [40 x i8] c"Can not read fwup-ptn from the firmware\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [29 x i8] c"DEBUG: can not find fwuphdr\0A\00", align 1
@.str.6 = private unnamed_addr constant [44 x i8] c"Ignoring the rest of the partition entries.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i64, %struct.flash_partition_entry*, i64, i32)* @read_partition_table to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_partition_table(i32* %0, i64 %1, %struct.flash_partition_entry* %2, i64 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.flash_partition_entry*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca [2048 x i8], align 16
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca [32 x i8], align 16
  %21 = alloca i32, align 4
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  %24 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store i64 %1, i64* %8, align 8
  store %struct.flash_partition_entry* %2, %struct.flash_partition_entry** %9, align 8
  store i64 %3, i64* %10, align 8
  store i32 %4, i32* %11, align 4
  store i8* null, i8** %15, align 8
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8** %16, align 8
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i8** %17, align 8
  %25 = load i32, i32* %11, align 4
  switch i32 %25, label %30 [
    i32 0, label %26
    i32 1, label %28
  ]

26:                                               ; preds = %5
  %27 = load i8*, i8** %16, align 8
  store i8* %27, i8** %15, align 8
  br label %32

28:                                               ; preds = %5
  %29 = load i8*, i8** %17, align 8
  store i8* %29, i8** %15, align 8
  br label %32

30:                                               ; preds = %5
  %31 = call i32 @error(i32 1, i32 0, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  br label %32

32:                                               ; preds = %30, %28, %26
  %33 = load i32*, i32** %7, align 8
  %34 = load i64, i64* %8, align 8
  %35 = load i32, i32* @SEEK_SET, align 4
  %36 = call i64 @fseek(i32* %33, i64 %34, i32 %35)
  %37 = icmp slt i64 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %32
  %39 = load i32, i32* @errno, align 4
  %40 = call i32 @error(i32 1, i32 %39, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0))
  br label %41

41:                                               ; preds = %38, %32
  %42 = getelementptr inbounds [2048 x i8], [2048 x i8]* %12, i64 0, i64 0
  %43 = load i32*, i32** %7, align 8
  %44 = call i32 @fread(i8* %42, i32 2048, i32 1, i32* %43)
  %45 = icmp ne i32 %44, 1
  br i1 %45, label %46, label %49

46:                                               ; preds = %41
  %47 = load i32, i32* @errno, align 4
  %48 = call i32 @error(i32 1, i32 %47, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.4, i64 0, i64 0))
  br label %49

49:                                               ; preds = %46, %41
  %50 = getelementptr inbounds [2048 x i8], [2048 x i8]* %12, i64 0, i64 2047
  store i8 0, i8* %50, align 1
  %51 = getelementptr inbounds [2048 x i8], [2048 x i8]* %12, i64 0, i64 0
  %52 = load i8*, i8** %15, align 8
  %53 = load i8*, i8** %15, align 8
  %54 = call i32 @strlen(i8* %53)
  %55 = call i64 @memcmp(i8* %51, i8* %52, i32 %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %49
  %58 = load i32, i32* @stderr, align 4
  %59 = call i32 @fprintf(i32 %58, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.5, i64 0, i64 0))
  store i32 1, i32* %6, align 4
  br label %175

60:                                               ; preds = %49
  %61 = getelementptr inbounds [2048 x i8], [2048 x i8]* %12, i64 0, i64 0
  store i8* %61, i8** %13, align 8
  %62 = getelementptr inbounds [2048 x i8], [2048 x i8]* %12, i64 0, i64 0
  %63 = getelementptr inbounds i8, i8* %62, i64 2048
  store i8* %63, i8** %14, align 8
  br label %64

64:                                               ; preds = %173, %60
  %65 = load i8*, i8** %13, align 8
  %66 = load i8*, i8** %15, align 8
  %67 = call i32 @strlen(i8* %66)
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i8, i8* %65, i64 %68
  %70 = load i8*, i8** %14, align 8
  %71 = icmp ult i8* %69, %70
  br i1 %71, label %72, label %79

72:                                               ; preds = %64
  %73 = load i8*, i8** %13, align 8
  %74 = load i8*, i8** %15, align 8
  %75 = load i8*, i8** %15, align 8
  %76 = call i32 @strlen(i8* %75)
  %77 = call i64 @memcmp(i8* %73, i8* %74, i32 %76)
  %78 = icmp eq i64 %77, 0
  br label %79

79:                                               ; preds = %72, %64
  %80 = phi i1 [ false, %64 ], [ %78, %72 ]
  br i1 %80, label %81, label %174

81:                                               ; preds = %79
  %82 = bitcast [32 x i8]* %20 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %82, i8 0, i64 32, i1 false)
  store i32 0, i32* %21, align 4
  store i64 0, i64* %22, align 8
  store i64 0, i64* %23, align 8
  %83 = load i8*, i8** %13, align 8
  %84 = load i8*, i8** %14, align 8
  %85 = load i8*, i8** %13, align 8
  %86 = ptrtoint i8* %84 to i64
  %87 = ptrtoint i8* %85 to i64
  %88 = sub i64 %86, %87
  %89 = trunc i64 %88 to i32
  %90 = call i8* @memchr(i8* %83, i32 10, i32 %89)
  store i8* %90, i8** %18, align 8
  %91 = load i8*, i8** %18, align 8
  %92 = icmp eq i8* %91, null
  br i1 %92, label %93, label %94

93:                                               ; preds = %81
  br label %174

94:                                               ; preds = %81
  store i32 0, i32* %24, align 4
  br label %95

95:                                               ; preds = %170, %94
  %96 = load i32, i32* %24, align 4
  %97 = icmp sle i32 %96, 4
  br i1 %97, label %98, label %173

98:                                               ; preds = %95
  %99 = load i8*, i8** %18, align 8
  %100 = load i8*, i8** %13, align 8
  %101 = icmp ule i8* %99, %100
  br i1 %101, label %102, label %103

102:                                              ; preds = %98
  br label %173

103:                                              ; preds = %98
  %104 = load i8*, i8** %13, align 8
  %105 = load i8*, i8** %18, align 8
  %106 = load i8*, i8** %13, align 8
  %107 = ptrtoint i8* %105 to i64
  %108 = ptrtoint i8* %106 to i64
  %109 = sub i64 %107, %108
  %110 = trunc i64 %109 to i32
  %111 = call i8* @memchr(i8* %104, i32 32, i32 %110)
  store i8* %111, i8** %19, align 8
  %112 = load i8*, i8** %19, align 8
  %113 = icmp eq i8* %112, null
  br i1 %113, label %114, label %117

114:                                              ; preds = %103
  %115 = load i32, i32* @errno, align 4
  %116 = call i32 @error(i32 1, i32 %115, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.6, i64 0, i64 0))
  br label %173

117:                                              ; preds = %103
  %118 = load i32, i32* %24, align 4
  switch i32 %118, label %169 [
    i32 0, label %119
    i32 1, label %122
    i32 2, label %148
    i32 3, label %151
    i32 4, label %156
  ]

119:                                              ; preds = %117
  %120 = load i8*, i8** %19, align 8
  %121 = getelementptr inbounds i8, i8* %120, i64 1
  store i8* %121, i8** %13, align 8
  br label %170

122:                                              ; preds = %117
  %123 = load i8*, i8** %19, align 8
  %124 = load i8*, i8** %13, align 8
  %125 = ptrtoint i8* %123 to i64
  %126 = ptrtoint i8* %124 to i64
  %127 = sub i64 %125, %126
  %128 = icmp sgt i64 %127, 31
  br i1 %128, label %129, label %130

129:                                              ; preds = %122
  br label %136

130:                                              ; preds = %122
  %131 = load i8*, i8** %19, align 8
  %132 = load i8*, i8** %13, align 8
  %133 = ptrtoint i8* %131 to i64
  %134 = ptrtoint i8* %132 to i64
  %135 = sub i64 %133, %134
  br label %136

136:                                              ; preds = %130, %129
  %137 = phi i64 [ 31, %129 ], [ %135, %130 ]
  %138 = trunc i64 %137 to i32
  store i32 %138, i32* %21, align 4
  %139 = getelementptr inbounds [32 x i8], [32 x i8]* %20, i64 0, i64 0
  %140 = load i8*, i8** %13, align 8
  %141 = load i32, i32* %21, align 4
  %142 = call i32 @strncpy(i8* %139, i8* %140, i32 %141)
  %143 = load i32, i32* %21, align 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds [32 x i8], [32 x i8]* %20, i64 0, i64 %144
  store i8 0, i8* %145, align 1
  %146 = load i8*, i8** %19, align 8
  %147 = getelementptr inbounds i8, i8* %146, i64 1
  store i8* %147, i8** %13, align 8
  br label %170

148:                                              ; preds = %117
  %149 = load i8*, i8** %19, align 8
  %150 = getelementptr inbounds i8, i8* %149, i64 1
  store i8* %150, i8** %13, align 8
  br label %170

151:                                              ; preds = %117
  %152 = load i8*, i8** %13, align 8
  %153 = call i64 @strtoul(i8* %152, i32* null, i32 16)
  store i64 %153, i64* %22, align 8
  %154 = load i8*, i8** %19, align 8
  %155 = getelementptr inbounds i8, i8* %154, i64 1
  store i8* %155, i8** %13, align 8
  br label %170

156:                                              ; preds = %117
  %157 = load i8*, i8** %19, align 8
  %158 = getelementptr inbounds i8, i8* %157, i64 1
  store i8* %158, i8** %13, align 8
  %159 = load i8*, i8** %13, align 8
  %160 = call i64 @strtoul(i8* %159, i32* null, i32 16)
  store i64 %160, i64* %23, align 8
  %161 = load i8*, i8** %18, align 8
  %162 = getelementptr inbounds i8, i8* %161, i64 1
  store i8* %162, i8** %13, align 8
  %163 = load %struct.flash_partition_entry*, %struct.flash_partition_entry** %9, align 8
  %164 = load i64, i64* %10, align 8
  %165 = getelementptr inbounds [32 x i8], [32 x i8]* %20, i64 0, i64 0
  %166 = load i64, i64* %22, align 8
  %167 = load i64, i64* %23, align 8
  %168 = call i32 @add_flash_partition(%struct.flash_partition_entry* %163, i64 %164, i8* %165, i64 %166, i64 %167)
  br label %170

169:                                              ; preds = %117
  br label %170

170:                                              ; preds = %169, %156, %151, %148, %136, %119
  %171 = load i32, i32* %24, align 4
  %172 = add nsw i32 %171, 1
  store i32 %172, i32* %24, align 4
  br label %95

173:                                              ; preds = %114, %102, %95
  br label %64

174:                                              ; preds = %93, %79
  store i32 0, i32* %6, align 4
  br label %175

175:                                              ; preds = %174, %57
  %176 = load i32, i32* %6, align 4
  ret i32 %176
}

declare dso_local i32 @error(i32, i32, i8*) #1

declare dso_local i64 @fseek(i32*, i64, i32) #1

declare dso_local i32 @fread(i8*, i32, i32, i32*) #1

declare dso_local i64 @memcmp(i8*, i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @fprintf(i32, i8*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i8* @memchr(i8*, i32, i32) #1

declare dso_local i32 @strncpy(i8*, i8*, i32) #1

declare dso_local i64 @strtoul(i8*, i32*, i32) #1

declare dso_local i32 @add_flash_partition(%struct.flash_partition_entry*, i64, i8*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
