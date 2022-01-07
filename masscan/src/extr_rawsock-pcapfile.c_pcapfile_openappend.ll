; ModuleID = '/home/carl/AnghaBench/masscan/src/extr_rawsock-pcapfile.c_pcapfile_openappend.c'
source_filename = "/home/carl/AnghaBench/masscan/src/extr_rawsock-pcapfile.c_pcapfile_openappend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.PcapFile = type { i32, i32, i32*, i32 }

@.str = private unnamed_addr constant [4 x i8] c"ab+\00", align 1
@errno = common dso_local global i64 0, align 8
@ENOENT = common dso_local global i64 0, align 8
@stderr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [45 x i8] c"Could not open capture file to append frame\0A\00", align 1
@.str.2 = private unnamed_addr constant [35 x i8] c"Error reading capture file header\0A\00", align 1
@SEEK_END = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [39 x i8] c"Could not seek to end of capture file\0A\00", align 1
@CAPFILE_BIGENDIAN = common dso_local global i32 0, align 4
@CAPFILE_LITTLEENDIAN = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [36 x i8] c"%s: unknown byte-order in cap file\0A\00", align 1
@.str.5 = private unnamed_addr constant [27 x i8] c"%s: unknown version %u.%u\0A\00", align 1
@.str.6 = private unnamed_addr constant [12 x i8] c"-linktype%d\00", align 1
@.str.7 = private unnamed_addr constant [59 x i8] c"Giving up on appending %u-type frames onto a %u-type file\0A\00", align 1
@.str.8 = private unnamed_addr constant [3 x i8] c"%s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.PcapFile* @pcapfile_openappend(i8* %0, i32 %1) #0 {
  %3 = alloca %struct.PcapFile*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.PcapFile*, align 8
  %7 = alloca [24 x i8], align 16
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca [32 x i8], align 16
  %14 = alloca i64, align 8
  %15 = alloca [4 x i8], align 1
  %16 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  %17 = load i8*, i8** %4, align 8
  %18 = call i32* @fopen(i8* %17, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  store i32* %18, i32** %10, align 8
  %19 = load i32*, i32** %10, align 8
  %20 = icmp eq i32* %19, null
  br i1 %20, label %21, label %29

21:                                               ; preds = %2
  %22 = load i64, i64* @errno, align 8
  %23 = load i64, i64* @ENOENT, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %29

25:                                               ; preds = %21
  %26 = load i8*, i8** %4, align 8
  %27 = load i32, i32* %5, align 4
  %28 = call %struct.PcapFile* @pcapfile_openwrite(i8* %26, i32 %27)
  store %struct.PcapFile* %28, %struct.PcapFile** %3, align 8
  br label %225

29:                                               ; preds = %21, %2
  %30 = load i32*, i32** %10, align 8
  %31 = icmp eq i32* %30, null
  br i1 %31, label %32, label %40

32:                                               ; preds = %29
  %33 = load i32, i32* @stderr, align 4
  %34 = call i32 (i32, i8*, ...) @fprintf(i32 %33, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0))
  %35 = load i8*, i8** %4, align 8
  %36 = call i32 @perror(i8* %35)
  %37 = load i8*, i8** %4, align 8
  %38 = load i32, i32* %5, align 4
  %39 = call %struct.PcapFile* @pcapfile_openappend(i8* %37, i32 %38)
  store %struct.PcapFile* %39, %struct.PcapFile** %3, align 8
  br label %225

40:                                               ; preds = %29
  %41 = getelementptr inbounds [24 x i8], [24 x i8]* %7, i64 0, i64 0
  %42 = load i32*, i32** %10, align 8
  %43 = call i32 @fread(i8* %41, i32 1, i32 24, i32* %42)
  %44 = icmp ne i32 %43, 24
  br i1 %44, label %45, label %55

45:                                               ; preds = %40
  %46 = load i32, i32* @stderr, align 4
  %47 = call i32 (i32, i8*, ...) @fprintf(i32 %46, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0))
  %48 = load i8*, i8** %4, align 8
  %49 = call i32 @perror(i8* %48)
  %50 = load i32*, i32** %10, align 8
  %51 = call i32 @fclose(i32* %50)
  %52 = load i8*, i8** %4, align 8
  %53 = load i32, i32* %5, align 4
  %54 = call %struct.PcapFile* @pcapfile_openappend(i8* %52, i32 %53)
  store %struct.PcapFile* %54, %struct.PcapFile** %3, align 8
  br label %225

55:                                               ; preds = %40
  %56 = load i32*, i32** %10, align 8
  %57 = load i32, i32* @SEEK_END, align 4
  %58 = call i64 @fseek(i32* %56, i32 0, i32 %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %67

60:                                               ; preds = %55
  %61 = load i32, i32* @stderr, align 4
  %62 = call i32 (i32, i8*, ...) @fprintf(i32 %61, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i64 0, i64 0))
  %63 = load i8*, i8** %4, align 8
  %64 = call i32 @perror(i8* %63)
  %65 = load i32*, i32** %10, align 8
  %66 = call i32 @fclose(i32* %65)
  store %struct.PcapFile* null, %struct.PcapFile** %3, align 8
  br label %225

67:                                               ; preds = %55
  %68 = getelementptr inbounds [24 x i8], [24 x i8]* %7, i64 0, i64 0
  %69 = load i8, i8* %68, align 16
  %70 = zext i8 %69 to i32
  %71 = shl i32 %70, 24
  %72 = getelementptr inbounds [24 x i8], [24 x i8]* %7, i64 0, i64 1
  %73 = load i8, i8* %72, align 1
  %74 = zext i8 %73 to i32
  %75 = shl i32 %74, 16
  %76 = or i32 %71, %75
  %77 = getelementptr inbounds [24 x i8], [24 x i8]* %7, i64 0, i64 2
  %78 = load i8, i8* %77, align 2
  %79 = zext i8 %78 to i32
  %80 = shl i32 %79, 8
  %81 = or i32 %76, %80
  %82 = getelementptr inbounds [24 x i8], [24 x i8]* %7, i64 0, i64 3
  %83 = load i8, i8* %82, align 1
  %84 = zext i8 %83 to i32
  %85 = or i32 %81, %84
  switch i32 %85, label %90 [
    i32 -1582119980, label %86
    i32 -725372255, label %88
  ]

86:                                               ; preds = %67
  %87 = load i32, i32* @CAPFILE_BIGENDIAN, align 4
  store i32 %87, i32* %8, align 4
  br label %99

88:                                               ; preds = %67
  %89 = load i32, i32* @CAPFILE_LITTLEENDIAN, align 4
  store i32 %89, i32* %8, align 4
  br label %99

90:                                               ; preds = %67
  %91 = load i32, i32* @stderr, align 4
  %92 = load i8*, i8** %4, align 8
  %93 = call i32 (i32, i8*, ...) @fprintf(i32 %91, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.4, i64 0, i64 0), i8* %92)
  %94 = load i32*, i32** %10, align 8
  %95 = call i32 @fclose(i32* %94)
  %96 = load i8*, i8** %4, align 8
  %97 = load i32, i32* %5, align 4
  %98 = call %struct.PcapFile* @pcapfile_openappend(i8* %96, i32 %97)
  store %struct.PcapFile* %98, %struct.PcapFile** %3, align 8
  br label %225

99:                                               ; preds = %88, %86
  %100 = load i32, i32* %8, align 4
  %101 = getelementptr inbounds [24 x i8], [24 x i8]* %7, i64 0, i64 0
  %102 = getelementptr inbounds i8, i8* %101, i64 4
  %103 = call i32 @PCAP16(i32 %100, i8* %102)
  store i32 %103, i32* %11, align 4
  %104 = load i32, i32* %8, align 4
  %105 = getelementptr inbounds [24 x i8], [24 x i8]* %7, i64 0, i64 0
  %106 = getelementptr inbounds i8, i8* %105, i64 6
  %107 = call i32 @PCAP16(i32 %104, i8* %106)
  store i32 %107, i32* %12, align 4
  %108 = load i32, i32* %11, align 4
  %109 = icmp ne i32 %108, 2
  br i1 %109, label %113, label %110

110:                                              ; preds = %99
  %111 = load i32, i32* %12, align 4
  %112 = icmp ne i32 %111, 4
  br i1 %112, label %113, label %119

113:                                              ; preds = %110, %99
  %114 = load i32, i32* @stderr, align 4
  %115 = load i8*, i8** %4, align 8
  %116 = load i32, i32* %11, align 4
  %117 = load i32, i32* %12, align 4
  %118 = call i32 (i32, i8*, ...) @fprintf(i32 %114, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5, i64 0, i64 0), i8* %115, i32 %116, i32 %117)
  br label %119

119:                                              ; preds = %113, %110
  %120 = load i32, i32* %8, align 4
  %121 = getelementptr inbounds [24 x i8], [24 x i8]* %7, i64 0, i64 0
  %122 = getelementptr inbounds i8, i8* %121, i64 20
  %123 = call i32 @PCAP32(i32 %120, i8* %122)
  store i32 %123, i32* %9, align 4
  %124 = load i32, i32* %5, align 4
  %125 = load i32, i32* %9, align 4
  %126 = icmp ne i32 %124, %125
  br i1 %126, label %127, label %195

127:                                              ; preds = %119
  %128 = load i32*, i32** %10, align 8
  %129 = call i32 @fclose(i32* %128)
  %130 = getelementptr inbounds [32 x i8], [32 x i8]* %13, i64 0, i64 0
  %131 = load i32, i32* %5, align 4
  %132 = call i64 (i8*, i32, i8*, ...) @snprintf(i8* %130, i32 32, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i64 0, i64 0), i32 %131)
  store i64 %132, i64* %14, align 8
  %133 = load i8*, i8** %4, align 8
  %134 = getelementptr inbounds [32 x i8], [32 x i8]* %13, i64 0, i64 0
  %135 = call i64 @strstr(i8* %133, i8* %134)
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %145, label %137

137:                                              ; preds = %127
  %138 = load i8*, i8** %4, align 8
  %139 = call i32 @strlen(i8* %138)
  %140 = sext i32 %139 to i64
  %141 = load i64, i64* %14, align 8
  %142 = add i64 %140, %141
  %143 = add i64 %142, 1
  %144 = icmp ugt i64 %143, 4
  br i1 %144, label %145, label %150

145:                                              ; preds = %137, %127
  %146 = load i32, i32* @stderr, align 4
  %147 = load i32, i32* %5, align 4
  %148 = load i32, i32* %9, align 4
  %149 = call i32 (i32, i8*, ...) @fprintf(i32 %146, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.7, i64 0, i64 0), i32 %147, i32 %148)
  store %struct.PcapFile* null, %struct.PcapFile** %3, align 8
  br label %225

150:                                              ; preds = %137
  %151 = load i8*, i8** %4, align 8
  %152 = call i8* @strchr(i8* %151, i8 signext 46)
  %153 = icmp ne i8* %152, null
  br i1 %153, label %154, label %161

154:                                              ; preds = %150
  %155 = load i8*, i8** %4, align 8
  %156 = call i8* @strchr(i8* %155, i8 signext 46)
  %157 = load i8*, i8** %4, align 8
  %158 = ptrtoint i8* %156 to i64
  %159 = ptrtoint i8* %157 to i64
  %160 = sub i64 %158, %159
  store i64 %160, i64* %16, align 8
  br label %165

161:                                              ; preds = %150
  %162 = load i8*, i8** %4, align 8
  %163 = call i32 @strlen(i8* %162)
  %164 = sext i32 %163 to i64
  store i64 %164, i64* %16, align 8
  br label %165

165:                                              ; preds = %161, %154
  %166 = getelementptr inbounds [4 x i8], [4 x i8]* %15, i64 0, i64 0
  %167 = load i8*, i8** %4, align 8
  %168 = load i64, i64* %16, align 8
  %169 = trunc i64 %168 to i32
  %170 = call i32 @memcpy(i8* %166, i8* %167, i32 %169)
  %171 = getelementptr inbounds [4 x i8], [4 x i8]* %15, i64 0, i64 0
  %172 = load i64, i64* %16, align 8
  %173 = getelementptr inbounds i8, i8* %171, i64 %172
  %174 = getelementptr inbounds [32 x i8], [32 x i8]* %13, i64 0, i64 0
  %175 = load i64, i64* %14, align 8
  %176 = trunc i64 %175 to i32
  %177 = call i32 @memcpy(i8* %173, i8* %174, i32 %176)
  %178 = getelementptr inbounds [4 x i8], [4 x i8]* %15, i64 0, i64 0
  %179 = load i64, i64* %16, align 8
  %180 = getelementptr inbounds i8, i8* %178, i64 %179
  %181 = load i64, i64* %14, align 8
  %182 = getelementptr inbounds i8, i8* %180, i64 %181
  %183 = load i8*, i8** %4, align 8
  %184 = load i64, i64* %16, align 8
  %185 = getelementptr inbounds i8, i8* %183, i64 %184
  %186 = load i8*, i8** %4, align 8
  %187 = load i64, i64* %16, align 8
  %188 = getelementptr inbounds i8, i8* %186, i64 %187
  %189 = call i32 @strlen(i8* %188)
  %190 = add nsw i32 %189, 1
  %191 = call i32 @memcpy(i8* %182, i8* %185, i32 %190)
  %192 = getelementptr inbounds [4 x i8], [4 x i8]* %15, i64 0, i64 0
  %193 = load i32, i32* %5, align 4
  %194 = call %struct.PcapFile* @pcapfile_openappend(i8* %192, i32 %193)
  store %struct.PcapFile* %194, %struct.PcapFile** %3, align 8
  br label %225

195:                                              ; preds = %119
  %196 = call i64 @malloc(i32 24)
  %197 = inttoptr i64 %196 to %struct.PcapFile*
  store %struct.PcapFile* %197, %struct.PcapFile** %6, align 8
  %198 = load %struct.PcapFile*, %struct.PcapFile** %6, align 8
  %199 = icmp eq %struct.PcapFile* %198, null
  br i1 %199, label %200, label %202

200:                                              ; preds = %195
  %201 = call i32 @exit(i32 1) #3
  unreachable

202:                                              ; preds = %195
  %203 = load %struct.PcapFile*, %struct.PcapFile** %6, align 8
  %204 = call i32 @memset(%struct.PcapFile* %203, i32 0, i32 24)
  %205 = load i32, i32* %8, align 4
  %206 = load %struct.PcapFile*, %struct.PcapFile** %6, align 8
  %207 = getelementptr inbounds %struct.PcapFile, %struct.PcapFile* %206, i32 0, i32 0
  store i32 %205, i32* %207, align 8
  %208 = load %struct.PcapFile*, %struct.PcapFile** %6, align 8
  %209 = getelementptr inbounds %struct.PcapFile, %struct.PcapFile* %208, i32 0, i32 3
  %210 = load i32, i32* %209, align 8
  %211 = sext i32 %210 to i64
  %212 = inttoptr i64 %211 to i8*
  %213 = load i8*, i8** %4, align 8
  %214 = call i64 (i8*, i32, i8*, ...) @snprintf(i8* %212, i32 4, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i64 0, i64 0), i8* %213)
  %215 = load i32*, i32** %10, align 8
  %216 = load %struct.PcapFile*, %struct.PcapFile** %6, align 8
  %217 = getelementptr inbounds %struct.PcapFile, %struct.PcapFile* %216, i32 0, i32 2
  store i32* %215, i32** %217, align 8
  %218 = load i32, i32* %8, align 4
  %219 = load %struct.PcapFile*, %struct.PcapFile** %6, align 8
  %220 = getelementptr inbounds %struct.PcapFile, %struct.PcapFile* %219, i32 0, i32 0
  store i32 %218, i32* %220, align 8
  %221 = load i32, i32* %5, align 4
  %222 = load %struct.PcapFile*, %struct.PcapFile** %6, align 8
  %223 = getelementptr inbounds %struct.PcapFile, %struct.PcapFile* %222, i32 0, i32 1
  store i32 %221, i32* %223, align 4
  %224 = load %struct.PcapFile*, %struct.PcapFile** %6, align 8
  store %struct.PcapFile* %224, %struct.PcapFile** %3, align 8
  br label %225

225:                                              ; preds = %202, %165, %145, %90, %60, %45, %32, %25
  %226 = load %struct.PcapFile*, %struct.PcapFile** %3, align 8
  ret %struct.PcapFile* %226
}

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local %struct.PcapFile* @pcapfile_openwrite(i8*, i32) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i32 @perror(i8*) #1

declare dso_local i32 @fread(i8*, i32, i32, i32*) #1

declare dso_local i32 @fclose(i32*) #1

declare dso_local i64 @fseek(i32*, i32, i32) #1

declare dso_local i32 @PCAP16(i32, i8*) #1

declare dso_local i32 @PCAP32(i32, i8*) #1

declare dso_local i64 @snprintf(i8*, i32, i8*, ...) #1

declare dso_local i64 @strstr(i8*, i8*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i64 @malloc(i32) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @memset(%struct.PcapFile*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
