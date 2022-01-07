; ModuleID = '/home/carl/AnghaBench/openwrt/package/system/mtd/src/extr_wrgg.c_mtd_fixwrgg.c'
source_filename = "/home/carl/AnghaBench/openwrt/package/system/mtd/src/extr_wrgg.c_mtd_fixwrgg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wrgg03_header = type { i32, i64 }

@quiet = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"Trying to fix WRGG header in %s at 0x%x...\0A\00", align 1
@erasesize = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"Could not open mtd device: %s\0A\00", align 1
@mtdsize = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [36 x i8] c"Offset too large, device size 0x%x\0A\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"malloc\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"pread\00", align 1
@WRGG03_MAGIC = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [13 x i8] c"magic1 = %x\0A\00", align 1
@.str.6 = private unnamed_addr constant [19 x i8] c"WRGG03_MAGIC = %x\0A\00", align 1
@.str.7 = private unnamed_addr constant [22 x i8] c"No WRGG header found\0A\00", align 1
@.str.8 = private unnamed_addr constant [30 x i8] c"WRGG entity with empty image\0A\00", align 1
@.str.9 = private unnamed_addr constant [33 x i8] c"Can't erease block at 0x%x (%s)\0A\00", align 1
@errno = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [25 x i8] c"Rewriting block at 0x%x\0A\00", align 1
@.str.11 = private unnamed_addr constant [26 x i8] c"Error writing block (%s)\0A\00", align 1
@.str.12 = private unnamed_addr constant [7 x i8] c"Done.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mtd_fixwrgg(i8* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.wrgg03_header*, align 8
  store i8* %0, i8** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %13 = load i32, i32* @quiet, align 4
  %14 = icmp slt i32 %13, 2
  br i1 %14, label %15, label %20

15:                                               ; preds = %3
  %16 = load i32, i32* @stderr, align 4
  %17 = load i8*, i8** %4, align 8
  %18 = load i64, i64* %5, align 8
  %19 = call i32 (i32, i8*, ...) @fprintf(i32 %16, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i8* %17, i64 %18)
  br label %20

20:                                               ; preds = %15, %3
  %21 = load i64, i64* %5, align 8
  %22 = load i32, i32* @erasesize, align 4
  %23 = sub nsw i32 %22, 1
  %24 = xor i32 %23, -1
  %25 = sext i32 %24 to i64
  %26 = and i64 %21, %25
  store i64 %26, i64* %10, align 8
  %27 = load i64, i64* %10, align 8
  %28 = load i64, i64* %5, align 8
  %29 = sub i64 %28, %27
  store i64 %29, i64* %5, align 8
  %30 = load i8*, i8** %4, align 8
  %31 = call i32 @mtd_check_open(i8* %30)
  store i32 %31, i32* %7, align 4
  %32 = load i32, i32* %7, align 4
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %34, label %39

34:                                               ; preds = %20
  %35 = load i32, i32* @stderr, align 4
  %36 = load i8*, i8** %4, align 8
  %37 = call i32 (i32, i8*, ...) @fprintf(i32 %35, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i8* %36)
  %38 = call i32 @exit(i32 1) #3
  unreachable

39:                                               ; preds = %20
  %40 = load i64, i64* %10, align 8
  %41 = load i32, i32* @erasesize, align 4
  %42 = sext i32 %41 to i64
  %43 = add i64 %40, %42
  %44 = load i64, i64* @mtdsize, align 8
  %45 = icmp ugt i64 %43, %44
  br i1 %45, label %46, label %51

46:                                               ; preds = %39
  %47 = load i32, i32* @stderr, align 4
  %48 = load i64, i64* @mtdsize, align 8
  %49 = call i32 (i32, i8*, ...) @fprintf(i32 %47, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0), i64 %48)
  %50 = call i32 @exit(i32 1) #3
  unreachable

51:                                               ; preds = %39
  %52 = load i32, i32* @erasesize, align 4
  %53 = call i8* @malloc(i32 %52)
  store i8* %53, i8** %8, align 8
  %54 = load i8*, i8** %8, align 8
  %55 = icmp ne i8* %54, null
  br i1 %55, label %59, label %56

56:                                               ; preds = %51
  %57 = call i32 @perror(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0))
  %58 = call i32 @exit(i32 1) #3
  unreachable

59:                                               ; preds = %51
  %60 = load i32, i32* %7, align 4
  %61 = load i8*, i8** %8, align 8
  %62 = load i32, i32* @erasesize, align 4
  %63 = load i64, i64* %10, align 8
  %64 = call i32 @pread(i32 %60, i8* %61, i32 %62, i64 %63)
  store i32 %64, i32* %9, align 4
  %65 = load i32, i32* %9, align 4
  %66 = load i32, i32* @erasesize, align 4
  %67 = icmp ne i32 %65, %66
  br i1 %67, label %68, label %71

68:                                               ; preds = %59
  %69 = call i32 @perror(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0))
  %70 = call i32 @exit(i32 1) #3
  unreachable

71:                                               ; preds = %59
  %72 = load i8*, i8** %8, align 8
  %73 = load i64, i64* %5, align 8
  %74 = getelementptr inbounds i8, i8* %72, i64 %73
  %75 = bitcast i8* %74 to %struct.wrgg03_header*
  store %struct.wrgg03_header* %75, %struct.wrgg03_header** %12, align 8
  %76 = load %struct.wrgg03_header*, %struct.wrgg03_header** %12, align 8
  %77 = getelementptr inbounds %struct.wrgg03_header, %struct.wrgg03_header* %76, i32 0, i32 0
  %78 = call i32 @le32_to_cpu(i32* %77)
  %79 = load i32, i32* @WRGG03_MAGIC, align 4
  %80 = icmp ne i32 %78, %79
  br i1 %80, label %81, label %93

81:                                               ; preds = %71
  %82 = load i32, i32* @stderr, align 4
  %83 = load %struct.wrgg03_header*, %struct.wrgg03_header** %12, align 8
  %84 = getelementptr inbounds %struct.wrgg03_header, %struct.wrgg03_header* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = call i32 (i32, i8*, ...) @fprintf(i32 %82, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0), i32 %85)
  %87 = load i32, i32* @stderr, align 4
  %88 = load i32, i32* @WRGG03_MAGIC, align 4
  %89 = call i32 (i32, i8*, ...) @fprintf(i32 %87, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.6, i64 0, i64 0), i32 %88)
  %90 = load i32, i32* @stderr, align 4
  %91 = call i32 (i32, i8*, ...) @fprintf(i32 %90, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.7, i64 0, i64 0))
  %92 = call i32 @exit(i32 1) #3
  unreachable

93:                                               ; preds = %71
  %94 = load %struct.wrgg03_header*, %struct.wrgg03_header** %12, align 8
  %95 = getelementptr inbounds %struct.wrgg03_header, %struct.wrgg03_header* %94, i32 0, i32 1
  %96 = load i64, i64* %95, align 8
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %102, label %98

98:                                               ; preds = %93
  %99 = load i32, i32* @stderr, align 4
  %100 = call i32 (i32, i8*, ...) @fprintf(i32 %99, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.8, i64 0, i64 0))
  %101 = call i32 @exit(i32 1) #3
  unreachable

102:                                              ; preds = %93
  br label %103

103:                                              ; preds = %102
  %104 = load i64, i64* %5, align 8
  %105 = add i64 %104, 16
  store i64 %105, i64* %11, align 8
  %106 = load i64, i64* %6, align 8
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %112, label %108

108:                                              ; preds = %103
  %109 = load i64, i64* @mtdsize, align 8
  %110 = load i64, i64* %11, align 8
  %111 = sub i64 %109, %110
  store i64 %111, i64* %6, align 8
  br label %112

112:                                              ; preds = %108, %103
  %113 = load i64, i64* %6, align 8
  %114 = load %struct.wrgg03_header*, %struct.wrgg03_header** %12, align 8
  %115 = getelementptr inbounds %struct.wrgg03_header, %struct.wrgg03_header* %114, i32 0, i32 1
  %116 = load i64, i64* %115, align 8
  %117 = icmp ugt i64 %113, %116
  br i1 %117, label %118, label %122

118:                                              ; preds = %112
  %119 = load %struct.wrgg03_header*, %struct.wrgg03_header** %12, align 8
  %120 = getelementptr inbounds %struct.wrgg03_header, %struct.wrgg03_header* %119, i32 0, i32 1
  %121 = load i64, i64* %120, align 8
  store i64 %121, i64* %6, align 8
  br label %122

122:                                              ; preds = %118, %112
  %123 = load %struct.wrgg03_header*, %struct.wrgg03_header** %12, align 8
  %124 = load i32, i32* %7, align 4
  %125 = load i64, i64* %11, align 8
  %126 = load i64, i64* %6, align 8
  %127 = call i64 @wrgg_fix_md5(%struct.wrgg03_header* %123, i32 %124, i64 %125, i64 %126)
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %129, label %130

129:                                              ; preds = %122
  br label %170

130:                                              ; preds = %122
  %131 = load i32, i32* %7, align 4
  %132 = load i64, i64* %10, align 8
  %133 = call i64 @mtd_erase_block(i32 %131, i64 %132)
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %135, label %142

135:                                              ; preds = %130
  %136 = load i32, i32* @stderr, align 4
  %137 = load i64, i64* %10, align 8
  %138 = load i32, i32* @errno, align 4
  %139 = call i8* @strerror(i32 %138)
  %140 = call i32 (i32, i8*, ...) @fprintf(i32 %136, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.9, i64 0, i64 0), i64 %137, i8* %139)
  %141 = call i32 @exit(i32 1) #3
  unreachable

142:                                              ; preds = %130
  %143 = load i32, i32* @quiet, align 4
  %144 = icmp slt i32 %143, 2
  br i1 %144, label %145, label %149

145:                                              ; preds = %142
  %146 = load i32, i32* @stderr, align 4
  %147 = load i64, i64* %10, align 8
  %148 = call i32 (i32, i8*, ...) @fprintf(i32 %146, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.10, i64 0, i64 0), i64 %147)
  br label %149

149:                                              ; preds = %145, %142
  %150 = load i32, i32* %7, align 4
  %151 = load i8*, i8** %8, align 8
  %152 = load i32, i32* @erasesize, align 4
  %153 = load i64, i64* %10, align 8
  %154 = call i32 @pwrite(i32 %150, i8* %151, i32 %152, i64 %153)
  %155 = load i32, i32* @erasesize, align 4
  %156 = icmp ne i32 %154, %155
  br i1 %156, label %157, label %163

157:                                              ; preds = %149
  %158 = load i32, i32* @stderr, align 4
  %159 = load i32, i32* @errno, align 4
  %160 = call i8* @strerror(i32 %159)
  %161 = call i32 (i32, i8*, ...) @fprintf(i32 %158, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.11, i64 0, i64 0), i8* %160)
  %162 = call i32 @exit(i32 1) #3
  unreachable

163:                                              ; preds = %149
  %164 = load i32, i32* @quiet, align 4
  %165 = icmp slt i32 %164, 2
  br i1 %165, label %166, label %169

166:                                              ; preds = %163
  %167 = load i32, i32* @stderr, align 4
  %168 = call i32 (i32, i8*, ...) @fprintf(i32 %167, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.12, i64 0, i64 0))
  br label %169

169:                                              ; preds = %166, %163
  br label %170

170:                                              ; preds = %169, %129
  %171 = load i32, i32* %7, align 4
  %172 = call i32 @close(i32 %171)
  %173 = call i32 (...) @sync()
  ret i32 0
}

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i32 @mtd_check_open(i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i8* @malloc(i32) #1

declare dso_local i32 @perror(i8*) #1

declare dso_local i32 @pread(i32, i8*, i32, i64) #1

declare dso_local i32 @le32_to_cpu(i32*) #1

declare dso_local i64 @wrgg_fix_md5(%struct.wrgg03_header*, i32, i64, i64) #1

declare dso_local i64 @mtd_erase_block(i32, i64) #1

declare dso_local i8* @strerror(i32) #1

declare dso_local i32 @pwrite(i32, i8*, i32, i64) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @sync(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
