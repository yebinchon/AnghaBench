; ModuleID = '/home/carl/AnghaBench/openwrt/package/system/mtd/src/extr_seama.c_mtd_fixseama.c'
source_filename = "/home/carl/AnghaBench/openwrt/package/system/mtd/src/extr_seama.c_mtd_fixseama.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seama_entity_header = type { i64, i32, i32 }

@quiet = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"Trying to fix SEAMA header in %s at 0x%x...\0A\00", align 1
@erasesize = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"Could not open mtd device: %s\0A\00", align 1
@mtdsize = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [36 x i8] c"Offset too large, device size 0x%x\0A\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"malloc\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"pread\00", align 1
@SEAMA_MAGIC = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [23 x i8] c"No SEAMA header found\0A\00", align 1
@.str.6 = private unnamed_addr constant [31 x i8] c"Seama entity with empty image\0A\00", align 1
@.str.7 = private unnamed_addr constant [33 x i8] c"Can't erease block at 0x%x (%s)\0A\00", align 1
@errno = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [25 x i8] c"Rewriting block at 0x%x\0A\00", align 1
@.str.9 = private unnamed_addr constant [26 x i8] c"Error writing block (%s)\0A\00", align 1
@.str.10 = private unnamed_addr constant [7 x i8] c"Done.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mtd_fixseama(i8* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.seama_entity_header*, align 8
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
  %19 = call i32 (i32, i8*, ...) @fprintf(i32 %16, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i8* %17, i64 %18)
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
  %75 = bitcast i8* %74 to %struct.seama_entity_header*
  store %struct.seama_entity_header* %75, %struct.seama_entity_header** %12, align 8
  %76 = load %struct.seama_entity_header*, %struct.seama_entity_header** %12, align 8
  %77 = getelementptr inbounds %struct.seama_entity_header, %struct.seama_entity_header* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = load i32, i32* @SEAMA_MAGIC, align 4
  %80 = call i64 @htonl(i32 %79)
  %81 = icmp ne i64 %78, %80
  br i1 %81, label %82, label %86

82:                                               ; preds = %71
  %83 = load i32, i32* @stderr, align 4
  %84 = call i32 (i32, i8*, ...) @fprintf(i32 %83, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0))
  %85 = call i32 @exit(i32 1) #3
  unreachable

86:                                               ; preds = %71
  %87 = load %struct.seama_entity_header*, %struct.seama_entity_header** %12, align 8
  %88 = getelementptr inbounds %struct.seama_entity_header, %struct.seama_entity_header* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 8
  %90 = call i64 @ntohl(i32 %89)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %96, label %92

92:                                               ; preds = %86
  %93 = load i32, i32* @stderr, align 4
  %94 = call i32 (i32, i8*, ...) @fprintf(i32 %93, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.6, i64 0, i64 0))
  %95 = call i32 @exit(i32 1) #3
  unreachable

96:                                               ; preds = %86
  br label %97

97:                                               ; preds = %96
  %98 = load i64, i64* %5, align 8
  %99 = add i64 %98, 16
  %100 = load %struct.seama_entity_header*, %struct.seama_entity_header** %12, align 8
  %101 = getelementptr inbounds %struct.seama_entity_header, %struct.seama_entity_header* %100, i32 0, i32 2
  %102 = load i32, i32* %101, align 4
  %103 = call i64 @ntohs(i32 %102)
  %104 = add i64 %99, %103
  store i64 %104, i64* %11, align 8
  %105 = load i64, i64* %6, align 8
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %111, label %107

107:                                              ; preds = %97
  %108 = load i64, i64* @mtdsize, align 8
  %109 = load i64, i64* %11, align 8
  %110 = sub i64 %108, %109
  store i64 %110, i64* %6, align 8
  br label %111

111:                                              ; preds = %107, %97
  %112 = load i64, i64* %6, align 8
  %113 = load %struct.seama_entity_header*, %struct.seama_entity_header** %12, align 8
  %114 = getelementptr inbounds %struct.seama_entity_header, %struct.seama_entity_header* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 8
  %116 = call i64 @ntohl(i32 %115)
  %117 = icmp ugt i64 %112, %116
  br i1 %117, label %118, label %123

118:                                              ; preds = %111
  %119 = load %struct.seama_entity_header*, %struct.seama_entity_header** %12, align 8
  %120 = getelementptr inbounds %struct.seama_entity_header, %struct.seama_entity_header* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 8
  %122 = call i64 @ntohl(i32 %121)
  store i64 %122, i64* %6, align 8
  br label %123

123:                                              ; preds = %118, %111
  %124 = load %struct.seama_entity_header*, %struct.seama_entity_header** %12, align 8
  %125 = load i32, i32* %7, align 4
  %126 = load i64, i64* %11, align 8
  %127 = load i64, i64* %6, align 8
  %128 = call i64 @seama_fix_md5(%struct.seama_entity_header* %124, i32 %125, i64 %126, i64 %127)
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %130, label %131

130:                                              ; preds = %123
  br label %171

131:                                              ; preds = %123
  %132 = load i32, i32* %7, align 4
  %133 = load i64, i64* %10, align 8
  %134 = call i64 @mtd_erase_block(i32 %132, i64 %133)
  %135 = icmp ne i64 %134, 0
  br i1 %135, label %136, label %143

136:                                              ; preds = %131
  %137 = load i32, i32* @stderr, align 4
  %138 = load i64, i64* %10, align 8
  %139 = load i32, i32* @errno, align 4
  %140 = call i8* @strerror(i32 %139)
  %141 = call i32 (i32, i8*, ...) @fprintf(i32 %137, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.7, i64 0, i64 0), i64 %138, i8* %140)
  %142 = call i32 @exit(i32 1) #3
  unreachable

143:                                              ; preds = %131
  %144 = load i32, i32* @quiet, align 4
  %145 = icmp slt i32 %144, 2
  br i1 %145, label %146, label %150

146:                                              ; preds = %143
  %147 = load i32, i32* @stderr, align 4
  %148 = load i64, i64* %10, align 8
  %149 = call i32 (i32, i8*, ...) @fprintf(i32 %147, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.8, i64 0, i64 0), i64 %148)
  br label %150

150:                                              ; preds = %146, %143
  %151 = load i32, i32* %7, align 4
  %152 = load i8*, i8** %8, align 8
  %153 = load i32, i32* @erasesize, align 4
  %154 = load i64, i64* %10, align 8
  %155 = call i32 @pwrite(i32 %151, i8* %152, i32 %153, i64 %154)
  %156 = load i32, i32* @erasesize, align 4
  %157 = icmp ne i32 %155, %156
  br i1 %157, label %158, label %164

158:                                              ; preds = %150
  %159 = load i32, i32* @stderr, align 4
  %160 = load i32, i32* @errno, align 4
  %161 = call i8* @strerror(i32 %160)
  %162 = call i32 (i32, i8*, ...) @fprintf(i32 %159, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.9, i64 0, i64 0), i8* %161)
  %163 = call i32 @exit(i32 1) #3
  unreachable

164:                                              ; preds = %150
  %165 = load i32, i32* @quiet, align 4
  %166 = icmp slt i32 %165, 2
  br i1 %166, label %167, label %170

167:                                              ; preds = %164
  %168 = load i32, i32* @stderr, align 4
  %169 = call i32 (i32, i8*, ...) @fprintf(i32 %168, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i64 0, i64 0))
  br label %170

170:                                              ; preds = %167, %164
  br label %171

171:                                              ; preds = %170, %130
  %172 = load i32, i32* %7, align 4
  %173 = call i32 @close(i32 %172)
  %174 = call i32 (...) @sync()
  ret i32 0
}

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i32 @mtd_check_open(i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i8* @malloc(i32) #1

declare dso_local i32 @perror(i8*) #1

declare dso_local i32 @pread(i32, i8*, i32, i64) #1

declare dso_local i64 @htonl(i32) #1

declare dso_local i64 @ntohl(i32) #1

declare dso_local i64 @ntohs(i32) #1

declare dso_local i64 @seama_fix_md5(%struct.seama_entity_header*, i32, i64, i64) #1

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
